import 'package:flutter_starter/core/exception.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

enum LoginStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    Account? account,
    BaseException? error,
  }) = _LoginState;
}
