import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/data/states/auth/auth_cubit.dart';
import 'package:flutter_starter/data/states/auth/auth_event.dart';

class AppBlocObserver extends BlocObserver {
  final AuthBloc _authBloc;

  const AppBlocObserver(this._authBloc);

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (error is DioError) {
      final statusCode = error.response?.statusCode;

      if (statusCode == 401) {
        _authBloc.add(const AuthLoggedOut());
      }
    }

    super.onError(bloc, error, stackTrace);
  }
}
