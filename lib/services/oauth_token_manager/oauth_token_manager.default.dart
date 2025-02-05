import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_starter/services/oauth_token_manager/oauth_token_manager.dart';

@Singleton(as: OauthTokenManager)
class DefaultOauthTokenManager extends OauthTokenManager {
  static const String _storagePrefix = '@@oauth-token/default';

  final FlutterSecureStorage _storage;

  const DefaultOauthTokenManager({
    required FlutterSecureStorage flutterSecureStorage,
  }) : _storage = flutterSecureStorage;

  String get _accessTokenKey => "$_storagePrefix/accessToken";
  String get _refreshTokenKey => "$_storagePrefix/refreshToken";

  @override
  Future<Map<String, dynamic>?> getAuthenticatedHeaders(
      Map<String, dynamic> headers) async {
    final accessToken = await getAccessToken();

    if (accessToken == null) {
      return headers;
    }

    return {
      ...headers,
      'Authorization': 'Bearer $accessToken',
    };
  }

  @override
  Future<String?> getAccessToken() async {
    return _storage.read(key: _accessTokenKey).onError((_, __) => null);
  }

  @override
  Future<String?> getRefreshToken() async {
    return _storage.read(key: _refreshTokenKey).onError((_, __) => null);
  }

  @override
  Future<void> saveAccessToken(String? token) {
    return _storage.write(key: _accessTokenKey, value: token);
  }

  @override
  Future<void> saveRefreshToken(String? token) {
    return _storage.write(key: _refreshTokenKey, value: token);
  }

  @override
  Future<void> removeAllTokens() async {
    await _storage.delete(key: _accessTokenKey);
    await _storage.delete(key: _refreshTokenKey);
  }
}
