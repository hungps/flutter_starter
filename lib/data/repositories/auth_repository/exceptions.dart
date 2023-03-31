import 'package:flutter_starter/core/exception.dart';
import 'package:flutter_starter/presenter/languages/translation_keys.g.dart';

abstract class AuthException extends BaseException {
  const AuthException(super.message, {super.code, super.data});
}

class UnauthorizedException extends AuthException {
  const UnauthorizedException({super.code, super.data})
      : super(LocaleKeys.Errors_AnUnknownErrorOccurred);
}

class LoginInvalidEmailPasswordException extends AuthException {
  const LoginInvalidEmailPasswordException() : super(LocaleKeys.Errors_InvalidUsernameOrPassword);
}
