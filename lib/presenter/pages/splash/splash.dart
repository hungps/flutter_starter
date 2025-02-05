import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/di.dart';
import 'package:flutter_starter/presenter/navigation/navigation.dart';
import 'package:flutter_starter/presenter/pages/splash/splash_bloc.dart';
import 'package:flutter_starter/presenter/pages/splash/splash_event.dart';
import 'package:flutter_starter/presenter/pages/splash/splash_selector.dart';
import 'package:flutter_starter/presenter/pages/splash/splash_state.dart';

@RoutePage()
class SplashPage extends StatefulWidget implements AutoRouteWrapper {
  const SplashPage();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (ctx) => provider.get<SplashBloc>(),
      child: this,
    );
  }

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashBloc get _bloc => context.read<SplashBloc>();

  @override
  void initState() {
    super.initState();

    scheduleMicrotask(() {
      _bloc.add(const SplashVerifyLoginStatusStarted());
    });
  }

  void _onSuccess(BuildContext context, SplashState state) {
    context.router.replaceAll([const HomeRoute()]);
  }

  void _onError(BuildContext context, SplashState state) {
    context.router.replaceAll([const LoginRoute()]);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        SplashVerifySuccessListener(listener: _onSuccess),
        SplashVerifyFailureListener(listener: _onError),
      ],
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
