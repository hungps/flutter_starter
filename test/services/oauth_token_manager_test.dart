import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_starter/services/oauth_token_manager/oauth_token_manager.default.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  late MockFlutterSecureStorage mockStorage;
  late DefaultOauthTokenManager manager;

  const accessKey = '@@oauth-token/default/accessToken';
  const refreshKey = '@@oauth-token/default/refreshToken';

  setUp(() {
    mockStorage = MockFlutterSecureStorage();
    manager = DefaultOauthTokenManager(flutterSecureStorage: mockStorage);
  });

  group('getAccessToken', () {
    test('returns token from storage', () async {
      when(() => mockStorage.read(key: accessKey)).thenAnswer((_) async => 'access123');

      expect(await manager.getAccessToken(), 'access123');
    });

    test('returns null when storage has no value', () async {
      when(() => mockStorage.read(key: accessKey)).thenAnswer((_) async => null);

      expect(await manager.getAccessToken(), isNull);
    });

    test('returns null when storage throws', () async {
      when(() => mockStorage.read(key: accessKey)).thenThrow(Exception('read error'));

      expect(await manager.getAccessToken(), isNull);
    });
  });

  group('getRefreshToken', () {
    test('returns token from storage', () async {
      when(() => mockStorage.read(key: refreshKey)).thenAnswer((_) async => 'refresh456');

      expect(await manager.getRefreshToken(), 'refresh456');
    });

    test('returns null when storage has no value', () async {
      when(() => mockStorage.read(key: refreshKey)).thenAnswer((_) async => null);

      expect(await manager.getRefreshToken(), isNull);
    });

    test('returns null when storage throws', () async {
      when(() => mockStorage.read(key: refreshKey)).thenThrow(Exception('read error'));

      expect(await manager.getRefreshToken(), isNull);
    });
  });

  group('saveAccessToken', () {
    test('writes token to storage', () async {
      when(() => mockStorage.write(key: accessKey, value: 'newToken'))
          .thenAnswer((_) async {});

      await manager.saveAccessToken('newToken');

      verify(() => mockStorage.write(key: accessKey, value: 'newToken')).called(1);
    });

    test('writes null to storage', () async {
      when(() => mockStorage.write(key: accessKey, value: null))
          .thenAnswer((_) async {});

      await manager.saveAccessToken(null);

      verify(() => mockStorage.write(key: accessKey, value: null)).called(1);
    });
  });

  group('saveRefreshToken', () {
    test('writes token to storage', () async {
      when(() => mockStorage.write(key: refreshKey, value: 'refreshNew'))
          .thenAnswer((_) async {});

      await manager.saveRefreshToken('refreshNew');

      verify(() => mockStorage.write(key: refreshKey, value: 'refreshNew')).called(1);
    });
  });

  group('removeAllTokens', () {
    test('deletes both access and refresh tokens', () async {
      when(() => mockStorage.delete(key: accessKey)).thenAnswer((_) async {});
      when(() => mockStorage.delete(key: refreshKey)).thenAnswer((_) async {});

      await manager.removeAllTokens();

      verify(() => mockStorage.delete(key: accessKey)).called(1);
      verify(() => mockStorage.delete(key: refreshKey)).called(1);
    });
  });

  group('getAuthenticatedHeaders', () {
    test('adds Authorization header when access token is present', () async {
      when(() => mockStorage.read(key: accessKey)).thenAnswer((_) async => 'mytoken');

      final result = await manager.getAuthenticatedHeaders({'Content-Type': 'application/json'});

      expect(result, {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer mytoken',
      });
    });

    test('returns original headers when access token is null', () async {
      when(() => mockStorage.read(key: accessKey)).thenAnswer((_) async => null);

      final headers = {'Content-Type': 'application/json'};
      final result = await manager.getAuthenticatedHeaders(headers);

      expect(result, headers);
    });

    test('returns original headers when storage throws', () async {
      when(() => mockStorage.read(key: accessKey)).thenThrow(Exception('err'));

      final headers = {'X-Custom': 'value'};
      final result = await manager.getAuthenticatedHeaders(headers);

      expect(result, headers);
    });

    test('works with empty headers map', () async {
      when(() => mockStorage.read(key: accessKey)).thenAnswer((_) async => 'tok');

      final result = await manager.getAuthenticatedHeaders({});

      expect(result, {'Authorization': 'Bearer tok'});
    });
  });
}
