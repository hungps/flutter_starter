import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/data/states/auth/auth_bloc.dart';
import 'package:flutter_starter/data/states/auth/auth_event.dart';
import 'package:flutter_starter/presenter/pages/login/login_bloc.dart';
import 'package:flutter_starter/presenter/pages/login/login_state.dart';

class AppBlocObserver extends BlocObserver {
  final AuthBloc _authBloc;

  const AppBlocObserver(this._authBloc);

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    if (bloc is LoginBloc && change is Change<LoginState>) {
      _onLoginBlocChanged(bloc, change);
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (error is DioException) {
      final statusCode = error.response?.statusCode;

      if (statusCode == 401) {
        _authBloc.add(const AuthLoggedOut());
      }
    }

    super.onError(bloc, error, stackTrace);
  }

  void _onLoginBlocChanged(LoginBloc bloc, Change<LoginState> change) {
    if (change.nextState.status == LoginStatus.success && change.nextState.account != null) {
      _authBloc.add(AuthLoggedIn(change.nextState.account!));
    }
  }
}
