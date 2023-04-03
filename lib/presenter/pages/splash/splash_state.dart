import 'package:flutter_starter/core/exception.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

enum SplashStatus { loading, success, failure }

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(SplashStatus.loading) SplashStatus status,
    Account? account,
    BaseException? error,
  }) = _SplashState;
}
