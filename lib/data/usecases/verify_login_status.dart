import 'dart:async';

import 'package:flutter_starter/core/use_case.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/repositories/auth_repository/auth_repository.dart';

class VerifyLoginStatus extends UseCase<Account, NoParams?> {
  final AuthRepository _authRepository;

  const VerifyLoginStatus(this._authRepository);

  @override
  FutureOr<Account> call([NoParams? params]) {
    return _authRepository.verifyLoginStatus();
  }
}
