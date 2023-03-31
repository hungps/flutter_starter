import 'package:flutter_starter/presenter/languages/translation_keys.g.dart';

abstract class BaseException<T> implements Exception {
  final String message;
  final String? code;
  final T? data;

  const BaseException(this.message, {this.code, this.data});

  static BaseException from(Object? error) {
    return error is BaseException ? error : UnknownException(error);
  }

  @override
  String toString() {
    return '$runtimeType'
        '('
        'message: $message'
        '${code != null ? ', code: $code' : ''}'
        '${data != null ? ', data: $data' : ''}'
        ')';
  }
}

class UnknownException extends BaseException {
  const UnknownException(Object? error)
      : super(LocaleKeys.Errors_AnUnknownErrorOccurred, data: error);
}
