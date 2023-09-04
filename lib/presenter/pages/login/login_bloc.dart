import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_starter/core/exception.dart';
import 'package:flutter_starter/data/usecases/login.dart';
import 'package:flutter_starter/presenter/pages/login/login_event.dart';
import 'package:flutter_starter/presenter/pages/login/login_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Login _login;

  LoginBloc({required Login login})
      : _login = login,
        super(const LoginState()) {
    on<LoginErrorOccurred>(_onErrorOccurred);
    on<LoginStarted>(_onLoginStarted, transformer: droppable());
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    add(LoginErrorOccurred(BaseException.from(error)));

    super.onError(error, stackTrace);
  }

  FutureOr<void> _onErrorOccurred(
    LoginErrorOccurred event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(
      status: LoginStatus.failure,
      error: event.error,
    ));
  }

  FutureOr _onLoginStarted(
    LoginStarted event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(
      status: LoginStatus.loading,
    ));

    final account = await _login(event.params);

    emit(state.copyWith(
      status: LoginStatus.success,
      account: account,
    ));
  }
}
