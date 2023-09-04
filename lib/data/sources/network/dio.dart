import 'dart:io';

import 'package:flutter_starter/core/exception.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_starter/services/oauth_token_manager/oauth_token_manager.dart';

@singleton
class NetworkDio extends DioForNative implements Interceptor {
  final OauthTokenManager _tokenManager;

  NetworkDio._(this._tokenManager, BaseOptions options) : super(options);

  @factoryMethod
  factory NetworkDio({
    required OauthTokenManager tokenManager,
    @Named('baseUrl') required String baseUrl,
  }) {
    final BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      contentType: 'application/json; charset=utf-8',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(minutes: 5),
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
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final errorType = err.type;
    final responseData = err.response?.data;

    if (err.error is SocketException ||
        errorType == DioExceptionType.connectionTimeout ||
        errorType == DioExceptionType.receiveTimeout ||
        errorType == DioExceptionType.sendTimeout) {
      return handler.next(NetworkException());
    }

    if (responseData is! Map) {
      return handler.next(err);
    }

    // TODO: Refreshing the token when it expires

    // TODO: Removing access token after logging out
    // if (err.response?.statusCode == 401 || responseData['messageCode'] == UnauthorizedException.messageCode) {
    //   await _tokenManager.removeAllTokens();
    //   return handler.next(UnauthorizedException(data: err.response?.data));
    // }

    // TODO: Handling global exception, such as maintainance, etc.

    return handler.next(err);
  }
}
