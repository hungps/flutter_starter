import 'package:flutter_starter/data/entities/account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loggedIn(Account account) = AuthLoggedIn;

  const factory AuthEvent.loggedOut([Exception? error]) = AuthLoggedOut;
}
