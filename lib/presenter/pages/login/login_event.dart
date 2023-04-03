import 'package:flutter_starter/core/exception.dart';
import 'package:flutter_starter/data/entities/request/login_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginStarted(LoginParams params) = LoginStarted;

  const factory LoginEvent.errorOccurred([BaseException? error]) = LoginErrorOccurred;
}
