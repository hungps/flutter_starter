// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/repositories/auth_repository/auth_repository.dart' as _i11;
import 'data/repositories/auth_repository/auth_repository.default.dart' as _i12;
import 'data/sources/local/local.dart' as _i5;
import 'data/sources/network/dio.dart' as _i9;
import 'data/sources/network/network.dart' as _i10;
import 'data/states/auth/auth_bloc.dart' as _i3;
import 'data/states/settings/settings_bloc.dart' as _i8;
import 'data/usecases/login.dart' as _i13;
import 'data/usecases/verify_login_status.dart' as _i15;
import 'di.dart' as _i17;
import 'presenter/pages/login/login_bloc.dart' as _i14;
import 'presenter/pages/splash/splash_bloc.dart' as _i16;
import 'services/oauth_token_manager/oauth_token_manager.dart' as _i6;
import 'services/oauth_token_manager/oauth_token_manager.default.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AuthBloc>(_i3.AuthBloc());
    gh.singleton<_i4.FlutterSecureStorage>(registerModule.flutterSecureStorage);
    gh.singleton<_i5.LocalDataSource>(_i5.LocalDataSource(
        flutterSecureStorage: gh<_i4.FlutterSecureStorage>()));
    gh.singleton<_i6.OauthTokenManager>(_i7.DefaultOauthTokenManager(
        flutterSecureStorage: gh<_i4.FlutterSecureStorage>()));
    gh.singleton<_i8.SettingsBloc>(_i8.SettingsBloc());
    gh.singleton<String>(
      registerModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.singleton<_i9.NetworkDio>(_i9.NetworkDio(
      tokenManager: gh<_i6.OauthTokenManager>(),
      baseUrl: gh<String>(instanceName: 'baseUrl'),
    ));
    gh.singleton<_i10.NetworkDataSource>(
        _i10.NetworkDataSource(gh<_i9.NetworkDio>()));
    gh.singleton<_i11.AuthRepository>(_i12.DefaultAuthRepository(
        networkDataSource: gh<_i10.NetworkDataSource>()));
    gh.singleton<_i13.Login>(
        _i13.Login(authRepository: gh<_i11.AuthRepository>()));
    gh.factory<_i14.LoginBloc>(() => _i14.LoginBloc(login: gh<_i13.Login>()));
    gh.singleton<_i15.VerifyLoginStatus>(
        _i15.VerifyLoginStatus(authRepository: gh<_i11.AuthRepository>()));
    gh.factory<_i16.SplashBloc>(
        () => _i16.SplashBloc(verifyLoginStatus: gh<_i15.VerifyLoginStatus>()));
    return this;
  }
}

class _$RegisterModule extends _i17.RegisterModule {}
