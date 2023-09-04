import 'package:flutter_starter/core/exception.dart';
import 'package:flutter_starter/presenter/languages/translation_keys.g.dart';

abstract class AuthException extends BaseException {
  AuthException({String? message, super.code, super.data})
      : super(message ?? LocaleKeys.Errors_AnUnknownErrorOccurred);
}

class UnauthorizedException extends AuthException {}

class LoginInvalidEmailPasswordException extends AuthException {
  LoginInvalidEmailPasswordException()
      : super(message: LocaleKeys.Errors_InvalidUsernameOrPassword);
}
