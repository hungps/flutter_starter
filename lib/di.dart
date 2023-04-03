import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/data/repositories/auth_repository/auth_repository.dart';
import 'package:flutter_starter/data/repositories/auth_repository/auth_repository.default.dart';
import 'package:flutter_starter/data/states/auth/auth_bloc.dart';
import 'package:flutter_starter/data/states/theme/theme_bloc.dart';
import 'package:flutter_starter/data/usecases/login.dart';
import 'package:flutter_starter/data/usecases/verify_login_status.dart';
import 'package:flutter_starter/presenter/pages/login/login_bloc.dart';
import 'package:flutter_starter/presenter/pages/splash/splash_bloc.dart';
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

  provider.registerSingleton<VerifyLoginStatus>(
    VerifyLoginStatus(provider.get<AuthRepository>()),
  );
}

FutureOr<void> _registerStates() {
  provider.registerSingleton<AuthBloc>(
    AuthBloc(),
  );

  provider.registerSingleton<ThemeBloc>(
    ThemeBloc(),
  );

  provider.registerFactory<SplashBloc>(
    () => SplashBloc(provider.get<VerifyLoginStatus>()),
  );

  provider.registerFactory<LoginBloc>(
    () => LoginBloc(provider.get<Login>()),
  );
}

class GlobalBlocProviders extends StatelessWidget {
  final Widget child;

  const GlobalBlocProviders({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>.value(
          value: provider.get<AuthBloc>(),
        ),
        BlocProvider<ThemeBloc>.value(
          value: provider.get<ThemeBloc>(),
        ),
      ],
      child: child,
    );
  }
}
