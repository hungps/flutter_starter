import 'package:flutter_starter/core/exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.usernameChanged(String username) = LoginUsernameChanged;

  const factory LoginEvent.passwordChanged(String password) = LoginPasswordChanged;

  const factory LoginEvent.loginStarted() = LoginStarted;

  const factory LoginEvent.errorOccurred([BaseException? error]) = LoginErrorOccurred;
}
