import 'package:flutter_starter/data/entities/account.dart';

abstract class AuthRepository {
  Future<Account> verifyLoginStatus();

  Future<Account> login({
    required String username,
    required String password,
  });
}
