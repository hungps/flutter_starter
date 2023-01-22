import 'package:dio/dio.dart';
import 'package:flutter_starter/services/oauth_token_manager/oauth_token_manager.dart';

class NetworkDataSource implements Interceptor {
  final Dio _request;
  final OauthTokenManager? _tokenManager;

  const NetworkDataSource._(this._request, this._tokenManager);

  factory NetworkDataSource(Dio dio, {OauthTokenManager? tokenManager}) {
    final instance = NetworkDataSource._(dio, tokenManager);

    instance._request.interceptors.add(instance);

    return instance;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (_tokenManager != null) {
      return handler.next(options.copyWith(
        headers: await _tokenManager!.getAuthenticatedHeaders(options.headers),
      ));
    }

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }
}
