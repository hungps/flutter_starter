import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/entities/request/login_params.dart';
import 'package:flutter_starter/data/repositories/auth_repository/auth_repository.default.dart';
import 'package:flutter_starter/data/repositories/auth_repository/exceptions.dart';
import 'package:flutter_starter/data/sources/network/network.dart';

class MockNetworkDataSource extends Mock implements NetworkDataSource {}

const _account = Account(id: '1', email: 'test@example.com', name: 'Test User');

void main() {
  late MockNetworkDataSource mockNetwork;
  late DefaultAuthRepository repository;

  setUpAll(() {
    registerFallbackValue(const LoginParams(username: '', password: ''));
  });

  setUp(() {
    mockNetwork = MockNetworkDataSource();
    repository = DefaultAuthRepository(networkDataSource: mockNetwork);
  });

  group('DefaultAuthRepository.verifyLoginStatus', () {
    test('returns Account on success', () async {
      when(() => mockNetwork.getCurrentAccount()).thenAnswer((_) async => _account);

      final result = await repository.verifyLoginStatus();

      expect(result, _account);
    });

    test('throws UnauthorizedException on any error', () async {
      when(() => mockNetwork.getCurrentAccount()).thenThrow(Exception('network error'));

      expect(() => repository.verifyLoginStatus(), throwsA(isA<UnauthorizedException>()));
    });

    test('throws UnauthorizedException even on DioException', () async {
      when(() => mockNetwork.getCurrentAccount())
          .thenThrow(DioException(requestOptions: RequestOptions(path: '')));

      expect(() => repository.verifyLoginStatus(), throwsA(isA<UnauthorizedException>()));
    });
  });

  group('DefaultAuthRepository.login', () {
    test('returns Account on success', () async {
      when(() => mockNetwork.login(any())).thenAnswer((_) async => _account);

      final result = await repository.login(username: 'user', password: 'pass');

      expect(result, _account);
      verify(() => mockNetwork.login(
            const LoginParams(username: 'user', password: 'pass'),
          )).called(1);
    });

    test('throws LoginInvalidEmailPasswordException on DioException', () async {
      when(() => mockNetwork.login(any()))
          .thenThrow(DioException(requestOptions: RequestOptions(path: '')));

      expect(
        () => repository.login(username: 'bad', password: 'creds'),
        throwsA(isA<LoginInvalidEmailPasswordException>()),
      );
    });
  });

  group('AuthException hierarchy', () {
    test('UnauthorizedException is an AuthException', () {
      expect(UnauthorizedException(), isA<AuthException>());
    });

    test('LoginInvalidEmailPasswordException is an AuthException', () {
      expect(LoginInvalidEmailPasswordException(), isA<AuthException>());
    });
  });
}
