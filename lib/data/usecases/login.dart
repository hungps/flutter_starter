import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:flutter_starter/core/use_case.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/repositories/auth_repository/auth_repository.dart';

typedef LoginParams = ({String username, String password});

@singleton
class LoginUseCase extends UseCase<Account, LoginParams> {
  final AuthRepository _authRepository;

  const LoginUseCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  FutureOr<Account> call(LoginParams params) {
    return _authRepository.login(
      username: params.username,
      password: params.password,
    );
  }
}
