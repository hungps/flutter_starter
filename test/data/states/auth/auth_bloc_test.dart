import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/states/auth/auth_bloc.dart';
import 'package:flutter_starter/data/states/auth/auth_event.dart';
import 'package:flutter_starter/data/states/auth/auth_state.dart';

const _account = Account(id: '1', email: 'a@b.com', name: 'Alice');

void main() {
  group('AuthBloc', () {
    test('initial state has null account and is not logged in', () {
      final bloc = AuthBloc();
      expect(bloc.state, const AuthState());
      expect(bloc.state.loggedIn, isFalse);
      expect(bloc.state.account, isNull);
      bloc.close();
    });

    blocTest<AuthBloc, AuthState>(
      'emits state with account on AuthLoggedIn',
      build: AuthBloc.new,
      act: (bloc) => bloc.add(const AuthLoggedIn(_account)),
      expect: () => [
        const AuthState(account: _account),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'loggedIn is true after AuthLoggedIn',
      build: AuthBloc.new,
      act: (bloc) => bloc.add(const AuthLoggedIn(_account)),
      verify: (bloc) => expect(bloc.state.loggedIn, isTrue),
    );

    blocTest<AuthBloc, AuthState>(
      'emits state with null account on AuthLoggedOut',
      build: AuthBloc.new,
      seed: () => const AuthState(account: _account),
      act: (bloc) => bloc.add(const AuthLoggedOut()),
      expect: () => [
        const AuthState(account: null, error: null),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits state with error on AuthLoggedOut with error',
      build: AuthBloc.new,
      seed: () => const AuthState(account: _account),
      act: (bloc) {
        final error = Exception('session expired');
        bloc.add(AuthLoggedOut(error));
      },
      verify: (bloc) {
        expect(bloc.state.account, isNull);
        expect(bloc.state.error, isNotNull);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'loggedIn is false after AuthLoggedOut',
      build: AuthBloc.new,
      seed: () => const AuthState(account: _account),
      act: (bloc) => bloc.add(const AuthLoggedOut()),
      verify: (bloc) => expect(bloc.state.loggedIn, isFalse),
    );
  });

  group('AuthState.loggedIn', () {
    test('is false when account is null', () {
      const state = AuthState();
      expect(state.loggedIn, isFalse);
    });

    test('is true when account is set', () {
      const state = AuthState(account: _account);
      expect(state.loggedIn, isTrue);
    });
  });
}
