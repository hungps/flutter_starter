import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/presenter/pages/splash/splash_bloc.dart';
import 'package:flutter_starter/presenter/pages/splash/splash_state.dart';

class SplashVerifySuccessListener extends BlocListener<SplashBloc, SplashState> {
  SplashVerifySuccessListener({
    super.key,
    required super.listener,
  }) : super(
          listenWhen: (previousState, currentState) =>
              previousState.status != currentState.status &&
              currentState.status == SplashStatus.success,
        );
}

class SplashVerifyFailureListener extends BlocListener<SplashBloc, SplashState> {
  SplashVerifyFailureListener({
    super.key,
    required super.listener,
  }) : super(
          listenWhen: (previousState, currentState) =>
              previousState.status != currentState.status &&
              currentState.status == SplashStatus.failure,
        );
}
