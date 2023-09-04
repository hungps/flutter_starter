import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:flutter_starter/core/use_case.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/entities/request/login_params.dart';
import 'package:flutter_starter/data/repositories/auth_repository/auth_repository.dart';

@singleton
class Login extends UseCase<Account, LoginParams> {
  final AuthRepository _authRepository;

  const Login({required AuthRepository authRepository}) : _authRepository = authRepository;

  @override
  FutureOr<Account> call(LoginParams params) {
    return _authRepository.login(params);
  }
}
