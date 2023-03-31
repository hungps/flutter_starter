import 'package:dio/dio.dart';
import 'package:flutter_starter/data/sources/network/dio.dart';
import 'package:flutter_starter/services/oauth_token_manager/oauth_token_manager.default.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_starter/data/sources/network/network.dart';
import 'package:flutter_starter/env.dart';
import 'package:flutter_starter/services/oauth_token_manager/oauth_token_manager.dart';

final provider = GetIt.instance;

Future injectDependencies() async {
  await _registerModules();
  await _registerServices();
  await _registerDataSources();
  await _registerRepositories();
  await _registerUseCases();
  await _registerStates();
}

Future _registerModules() async {
  provider.registerSingleton<FlutterSecureStorage>(
    const FlutterSecureStorage(),
  );
}

Future _registerServices() async {
  provider.registerSingleton<OauthTokenManager>(
    DefaultOauthTokenManager(provider.get<FlutterSecureStorage>()),
  );
}

Future _registerDataSources() async {
  provider.registerSingleton<NetworkDataSource>(
    NetworkDataSource(NetworkDio(
      baseUrl: AppEnv.baseUrl,
      tokenManager: provider.get<OauthTokenManager>(),
    )),
  );
}

Future _registerRepositories() async {}

Future _registerUseCases() async {}

Future _registerStates() async {}
