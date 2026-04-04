import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_params.freezed.dart';
part 'login_params.g.dart';

@freezed
abstract class LoginParams with _$LoginParams {
  const factory LoginParams({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'password') required String password,
  }) = _LoginParams;

  factory LoginParams.fromJson(Map<String, Object?> json) => _$LoginParamsFromJson(json);
}
