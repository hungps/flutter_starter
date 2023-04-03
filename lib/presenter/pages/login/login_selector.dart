import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/presenter/pages/login/login_bloc.dart';
import 'package:flutter_starter/presenter/pages/login/login_state.dart';

class LoginStatusSelector extends BlocSelector<LoginBloc, LoginState, LoginStatus> {
  LoginStatusSelector({
    super.key,
    required Widget Function(LoginStatus status) builder,
  }) : super(
          selector: (state) => state.status,
          builder: (_, status) => builder(status),
        );
}

class LoginSuccessListener extends BlocListener<LoginBloc, LoginState> {
  LoginSuccessListener({
    super.key,
    required super.listener,
  }) : super(
          listenWhen: (previousState, currentState) =>
              previousState.status != currentState.status &&
              currentState.status == LoginStatus.success,
        );
}

class LoginFailureListener extends BlocListener<LoginBloc, LoginState> {
  LoginFailureListener({
    super.key,
    required super.listener,
  }) : super(
          listenWhen: (previousState, currentState) =>
              previousState.status != currentState.status &&
              currentState.status == LoginStatus.failure,
        );
}
