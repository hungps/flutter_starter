import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_starter/core/exception.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/repositories/auth_repository/exceptions.dart';
import 'package:flutter_starter/data/usecases/login.dart';
import 'package:flutter_starter/presenter/pages/login/login_bloc.dart';
import 'package:flutter_starter/presenter/pages/login/login_event.dart';
import 'package:flutter_starter/presenter/pages/login/login_state.dart';

class MockLoginUseCase extends Mock implements LoginUseCase {}

const _account = Account(id: '1', email: 'a@b.com', name: 'Alice');

void main() {
  late MockLoginUseCase mockLoginUseCase;

  setUpAll(() {
    registerFallbackValue<LoginParams>((username: '', password: ''));
  });

  setUp(() {
    mockLoginUseCase = MockLoginUseCase();
  });

  group('LoginBloc', () {
    test('initial state is correct', () {
      final bloc = LoginBloc(login: mockLoginUseCase);
      expect(bloc.state, const LoginState());
      expect(bloc.state.status, LoginStatus.initial);
      expect(bloc.state.username, '');
      expect(bloc.state.password, '');
      expect(bloc.state.account, isNull);
      bloc.close();
    });

    blocTest<LoginBloc, LoginState>(
      'emits updated username on LoginUsernameChanged',
      build: () => LoginBloc(login: mockLoginUseCase),
      act: (bloc) => bloc.add(const LoginUsernameChanged('alice')),
      expect: () => [
        const LoginState(username: 'alice'),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits updated password on LoginPasswordChanged',
      build: () => LoginBloc(login: mockLoginUseCase),
      act: (bloc) => bloc.add(const LoginPasswordChanged('secret')),
      expect: () => [
        const LoginState(password: 'secret'),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits submitting then success on LoginStarted when login succeeds',
      build: () {
        when(() => mockLoginUseCase(any())).thenAnswer((_) async => _account);
        return LoginBloc(login: mockLoginUseCase);
      },
      seed: () => const LoginState(username: 'alice', password: 'secret'),
      act: (bloc) => bloc.add(const LoginStarted()),
      expect: () => [
        const LoginState(
          username: 'alice',
          password: 'secret',
          status: LoginStatus.submitting,
        ),
        const LoginState(
          username: 'alice',
          password: 'secret',
          status: LoginStatus.success,
          account: _account,
        ),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits submitting then failure on LoginStarted when login throws',
      build: () {
        when(() => mockLoginUseCase(any()))
            .thenThrow(LoginInvalidEmailPasswordException());
        return LoginBloc(login: mockLoginUseCase);
      },
      seed: () => const LoginState(username: 'bad', password: 'creds'),
      act: (bloc) => bloc.add(const LoginStarted()),
      expect: () => [
        const LoginState(
          username: 'bad',
          password: 'creds',
          status: LoginStatus.submitting,
        ),
        isA<LoginState>()
            .having((s) => s.status, 'status', LoginStatus.failure)
            .having((s) => s.error, 'error', isA<LoginInvalidEmailPasswordException>()),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits failure state on LoginErrorOccurred',
      build: () => LoginBloc(login: mockLoginUseCase),
      act: (bloc) => bloc.add(LoginErrorOccurred(NetworkException())),
      expect: () => [
        isA<LoginState>()
            .having((s) => s.status, 'status', LoginStatus.failure)
            .having((s) => s.error, 'error', isA<NetworkException>()),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits failure with null error on LoginErrorOccurred without error',
      build: () => LoginBloc(login: mockLoginUseCase),
      act: (bloc) => bloc.add(const LoginErrorOccurred()),
      expect: () => [
        isA<LoginState>()
            .having((s) => s.status, 'status', LoginStatus.failure)
            .having((s) => s.error, 'error', isNull),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'username and password accumulate across multiple events',
      build: () => LoginBloc(login: mockLoginUseCase),
      act: (bloc) {
        bloc
          ..add(const LoginUsernameChanged('user@example.com'))
          ..add(const LoginPasswordChanged('mypassword'));
      },
      expect: () => [
        const LoginState(username: 'user@example.com'),
        const LoginState(username: 'user@example.com', password: 'mypassword'),
      ],
    );
  });
}
