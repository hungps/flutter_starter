import 'package:flutter_starter/core/exception.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

enum LoginStatus {
  initial,
  submitting,
  success,
  failure,
}

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    Account? account,
    @Default('') String username,
    @Default('') String password,
    BaseException? error,
  }) = _LoginState;
}
