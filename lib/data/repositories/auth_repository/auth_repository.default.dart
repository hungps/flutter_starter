import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/entities/request/login_params.dart';
import 'package:flutter_starter/data/repositories/auth_repository/auth_repository.dart';
import 'package:flutter_starter/data/repositories/auth_repository/exceptions.dart';
import 'package:flutter_starter/data/sources/network/network.dart';

class DefaultAuthRepository extends AuthRepository {
  final NetworkDataSource _networkDataSource;

  DefaultAuthRepository(this._networkDataSource);

  @override
  Future<Account> verifyLoginStatus() async {
    try {
      return await _networkDataSource.getCurrentAccount();
    } catch (e) {
      throw const UnauthorizedException();
    }
  }

  @override
  Future<Account> login(LoginParams params) async {
    try {
      return await _networkDataSource.login(params);
    } catch (e) {
      throw const LoginInvalidEmailPasswordException();
    }
  }
}
