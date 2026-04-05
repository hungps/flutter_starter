import 'package:bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/repositories/auth_repository/exceptions.dart';
import 'package:flutter_starter/data/states/auth/auth_bloc.dart';
import 'package:flutter_starter/data/states/auth/auth_event.dart';
import 'package:flutter_starter/data/states/bloc_observer.dart';
import 'package:flutter_starter/data/usecases/login.dart';
import 'package:flutter_starter/presenter/pages/login/login_bloc.dart';
import 'package:flutter_starter/presenter/pages/login/login_state.dart';

class MockAuthBloc extends Mock implements AuthBloc {}

class MockLoginUseCase extends Mock implements LoginUseCase {}

const _account = Account(id: '1', email: 'a@b.com', name: 'Alice');

void main() {
  late MockAuthBloc mockAuthBloc;
  late AppBlocObserver observer;

  setUpAll(() {
    // Register fallback for AuthEvent so any() works in when/verify
    registerFallbackValue<AuthEvent>(const AuthLoggedOut());
  });

  setUp(() {
    mockAuthBloc = MockAuthBloc();
    observer = AppBlocObserver(mockAuthBloc);
  });

  group('AppBlocObserver.onError', () {
    test('dispatches AuthLoggedOut when error is UnauthorizedException', () {
      when(() => mockAuthBloc.add(any())).thenReturn(null);

      observer.onError(mockAuthBloc, UnauthorizedException(), StackTrace.empty);

      verify(() => mockAuthBloc.add(const AuthLoggedOut())).called(1);
    });

    test('does not dispatch AuthLoggedOut for generic Exception', () {
      observer.onError(mockAuthBloc, Exception('other'), StackTrace.empty);

      verifyNever(() => mockAuthBloc.add(any()));
    });

    test('does not dispatch AuthLoggedOut for a string error', () {
      observer.onError(mockAuthBloc, 'some string error', StackTrace.empty);

      verifyNever(() => mockAuthBloc.add(any()));
    });
  });

  group('AppBlocObserver.onChange with LoginBloc', () {
    late MockLoginUseCase mockLoginUseCase;
    late LoginBloc loginBloc;

    setUp(() {
      mockLoginUseCase = MockLoginUseCase();
      loginBloc = LoginBloc(login: mockLoginUseCase);
    });

    tearDown(() {
      loginBloc.close();
    });

    test('dispatches AuthLoggedIn when LoginBloc transitions to success with account', () {
      when(() => mockAuthBloc.add(any())).thenReturn(null);

      const prevState = LoginState(status: LoginStatus.submitting);
      const nextState = LoginState(status: LoginStatus.success, account: _account);
      final change = Change<LoginState>(currentState: prevState, nextState: nextState);

      observer.onChange(loginBloc, change);

      verify(() => mockAuthBloc.add(const AuthLoggedIn(_account))).called(1);
    });

    test('does not dispatch AuthLoggedIn when success state has null account', () {
      const prevState = LoginState(status: LoginStatus.submitting);
      const nextState = LoginState(status: LoginStatus.success, account: null);
      final change = Change<LoginState>(currentState: prevState, nextState: nextState);

      observer.onChange(loginBloc, change);

      verifyNever(() => mockAuthBloc.add(any()));
    });

    test('does not dispatch AuthLoggedIn when status is not success', () {
      const prevState = LoginState(status: LoginStatus.initial);
      const nextState = LoginState(status: LoginStatus.submitting);
      final change = Change<LoginState>(currentState: prevState, nextState: nextState);

      observer.onChange(loginBloc, change);

      verifyNever(() => mockAuthBloc.add(any()));
    });

    test('does not dispatch anything when bloc is not a LoginBloc', () {
      final authBloc = AuthBloc();
      final change = Change<LoginState>(
        currentState: const LoginState(),
        nextState: const LoginState(status: LoginStatus.success, account: _account),
      );

      observer.onChange(authBloc, change);

      verifyNever(() => mockAuthBloc.add(any()));
      authBloc.close();
    });
  });
}
