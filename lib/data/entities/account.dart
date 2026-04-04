import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
abstract class Account with _$Account {
  const factory Account({
    required String id,
    required String email,
    required String name,
    String? avatar,
  }) = _Account;

  factory Account.fromJson(Map<String, Object?> json) => _$AccountFromJson(json);
}
