import 'package:flutter_starter/data/entities/account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    Account? account,
    Exception? error,
  }) = _AuthState;

  bool get loggedIn => account != null;
}
