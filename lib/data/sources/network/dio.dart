import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter_starter/services/oauth_token_manager/oauth_token_manager.dart';

class NetworkDio extends DioForNative implements Interceptor {
  final OauthTokenManager _tokenManager;

  NetworkDio._(this._tokenManager, BaseOptions options) : super(options);

  factory NetworkDio({
    required OauthTokenManager tokenManager,
    required String baseUrl,
    Map<String, dynamic> headers = const {},
  }) {
    final BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
      contentType: 'application/json; charset=utf-8',
      connectTimeout: 30000,
    );

    final instance = NetworkDio._(tokenManager, options);

    instance.interceptors.add(instance);

    return instance;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options.copyWith(
      headers: await _tokenManager.getAuthenticatedHeaders(options.headers),
    ));
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    // TODO: Saving access token after logging in
    // if (response.requestOptions.path.endsWith(NetworkUrls.login) && response.data['access-token'] != null) {
    //   await _tokenManager.saveAccessToken(response.data['access-token']);
    // }

    return handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    // TODO: Removing access token after logging out
    // if (!err.requestOptions.path.endsWith(NetworkUrls.login) && err.response?.statusCode == 401) {
    //   await _tokenManager.removeAllTokens();
    // }

    // TODO: Refreshing the token when it expires

    return handler.next(err);
  }
}
