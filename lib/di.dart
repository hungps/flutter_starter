import 'dart:async';

import 'package:flutter_starter/data/repositories/auth_repository/auth_repository.dart';
import 'package:flutter_starter/data/repositories/auth_repository/auth_repository.default.dart';
import 'package:flutter_starter/data/states/auth/auth_cubit.dart';
import 'package:flutter_starter/data/usecases/login.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_starter/data/sources/network/network.dart';
import 'package:flutter_starter/data/sources/local/local.dart';
import 'package:flutter_starter/data/sources/network/dio.dart';
import 'package:flutter_starter/services/oauth_token_manager/oauth_token_manager.dart';
import 'package:flutter_starter/services/oauth_token_manager/oauth_token_manager.default.dart';
import 'package:flutter_starter/env.dart';

final provider = GetIt.instance;

Future injectDependencies() async {
  await _registerModules();
  await _registerServices();
  await _registerDataSources();
  await _registerRepositories();
  await _registerUseCases();
  await _registerStates();
}

FutureOr<void> _registerModules() {
  provider.registerSingleton<FlutterSecureStorage>(
    const FlutterSecureStorage(),
  );
}

FutureOr<void> _registerServices() {
  provider.registerSingleton<OauthTokenManager>(
    DefaultOauthTokenManager(provider.get<FlutterSecureStorage>()),
  );
}

FutureOr<void> _registerDataSources() {
  provider.registerSingleton<NetworkDataSource>(
    NetworkDataSource(NetworkDio(
      baseUrl: AppEnv.baseUrl,
      tokenManager: provider.get<OauthTokenManager>(),
    )),
  );

  provider.registerSingleton(
    LocalDataSource(provider.get<FlutterSecureStorage>()),
  );
}

FutureOr<void> _registerRepositories() {
  provider.registerSingleton<AuthRepository>(
    DefaultAuthRepository(provider.get<NetworkDataSource>()),
  );
}

FutureOr<void> _registerUseCases() {
  provider.registerSingleton<Login>(
    Login(provider.get<AuthRepository>()),
  );
}

FutureOr<void> _registerStates() {
  provider.registerSingleton(
    AuthBloc(),
  );
}
