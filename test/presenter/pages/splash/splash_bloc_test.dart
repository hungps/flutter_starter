import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_starter/core/exception.dart';
import 'package:flutter_starter/core/use_case.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/repositories/auth_repository/exceptions.dart';
import 'package:flutter_starter/data/usecases/verify_login_status.dart';
import 'package:flutter_starter/presenter/pages/splash/splash_bloc.dart';
import 'package:flutter_starter/presenter/pages/splash/splash_event.dart';
import 'package:flutter_starter/presenter/pages/splash/splash_state.dart';

class MockVerifyLoginStatusUseCase extends Mock implements VerifyLoginStatusUseCase {}

const _account = Account(id: '3', email: 'c@d.com', name: 'Carol');

void main() {
  late MockVerifyLoginStatusUseCase mockUseCase;

  setUpAll(() {
    registerFallbackValue(NoParams());
  });

  setUp(() {
    mockUseCase = MockVerifyLoginStatusUseCase();
  });

  group('SplashBloc', () {
    test('initial state is loading', () {
      final bloc = SplashBloc(verifyLoginStatus: mockUseCase);
      expect(bloc.state, const SplashState(status: SplashStatus.loading));
      bloc.close();
    });

    blocTest<SplashBloc, SplashState>(
      // The first emit() always fires (bloc_test 10 / BLoC 9.2 _emitted flag),
      // even when the value equals the initial state. So loading appears first.
      'emits success with account on SplashVerifyLoginStatusStarted when use case succeeds',
      build: () {
        when(() => mockUseCase(any())).thenAnswer((_) async => _account);
        return SplashBloc(verifyLoginStatus: mockUseCase);
      },
      act: (bloc) => bloc.add(const SplashVerifyLoginStatusStarted()),
      expect: () => [
        const SplashState(status: SplashStatus.loading),
        const SplashState(status: SplashStatus.success, account: _account),
      ],
    );

    blocTest<SplashBloc, SplashState>(
      'emits failure when use case throws',
      build: () {
        when(() => mockUseCase(any())).thenAnswer((_) => Future.error(UnauthorizedException()));
        return SplashBloc(verifyLoginStatus: mockUseCase);
      },
      act: (bloc) => bloc.add(const SplashVerifyLoginStatusStarted()),
      expect: () => [
        const SplashState(status: SplashStatus.loading),
        isA<SplashState>().having(
          (s) => s.status,
          'status',
          SplashStatus.failure,
        ),
      ],
      errors: () => [isA<UnauthorizedException>()],
    );

    blocTest<SplashBloc, SplashState>(
      'emits failure with error on SplashErrorOccurred event',
      build: () => SplashBloc(verifyLoginStatus: mockUseCase),
      act: (bloc) => bloc.add(SplashErrorOccurred(NetworkException())),
      expect: () => [
        isA<SplashState>()
            .having((s) => s.status, 'status', SplashStatus.failure)
            .having((s) => s.error, 'error', isA<NetworkException>()),
      ],
    );

    blocTest<SplashBloc, SplashState>(
      'emits failure with null error on SplashErrorOccurred without argument',
      build: () => SplashBloc(verifyLoginStatus: mockUseCase),
      act: (bloc) => bloc.add(const SplashErrorOccurred()),
      expect: () => [
        isA<SplashState>()
            .having((s) => s.status, 'status', SplashStatus.failure)
            .having((s) => s.error, 'error', isNull),
      ],
    );

    blocTest<SplashBloc, SplashState>(
      'calls use case when SplashVerifyLoginStatusStarted is dispatched',
      build: () {
        when(() => mockUseCase(any())).thenAnswer((_) async => _account);
        return SplashBloc(verifyLoginStatus: mockUseCase);
      },
      act: (bloc) => bloc.add(const SplashVerifyLoginStatusStarted()),
      verify: (_) => verify(() => mockUseCase(any())).called(1),
    );
  });
}
