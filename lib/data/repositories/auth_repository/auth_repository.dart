import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/entities/request/login_params.dart';

abstract class AuthRepository {
  Future<Account> verifyLoginStatus();

  Future<Account> login(LoginParams params);
}
