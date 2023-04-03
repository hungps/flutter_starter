import 'package:flutter_starter/core/exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.freezed.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.verifyLoginStatusStarted() = SplashVerifyLoginStatusStarted;

  const factory SplashEvent.errorOccurred([BaseException? error]) = SplashErrorOccurred;
}
