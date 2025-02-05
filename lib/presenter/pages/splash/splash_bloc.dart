import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/core/exception.dart';
import 'package:flutter_starter/data/usecases/verify_login_status.dart';
import 'package:flutter_starter/presenter/pages/splash/splash_event.dart';
import 'package:flutter_starter/presenter/pages/splash/splash_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final VerifyLoginStatusUseCase _verifyLoginStatus;

  SplashBloc({
    required VerifyLoginStatusUseCase verifyLoginStatus,
  })  : _verifyLoginStatus = verifyLoginStatus,
        super(const SplashState()) {
    on<SplashErrorOccurred>(_onErrorOccurred);
    on<SplashVerifyLoginStatusStarted>(_onVerifyLoginStatusStarted);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    add(SplashErrorOccurred(BaseException.from(error)));

    super.onError(error, stackTrace);
  }

  FutureOr<void> _onErrorOccurred(
    SplashErrorOccurred event,
    Emitter<SplashState> emit,
  ) {
    emit(state.copyWith(
      status: SplashStatus.failure,
      error: event.error,
    ));
  }

  FutureOr _onVerifyLoginStatusStarted(
    SplashVerifyLoginStatusStarted event,
    Emitter<SplashState> emit,
  ) async {
    emit(state.copyWith(
      status: SplashStatus.loading,
    ));

    final account = await _verifyLoginStatus();

    emit(state.copyWith(
      status: SplashStatus.success,
      account: account,
    ));
  }
}
