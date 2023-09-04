import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/data/states/auth/auth_bloc.dart';
import 'package:flutter_starter/data/states/auth/auth_state.dart';
import 'package:flutter_starter/data/states/settings/settings_bloc.dart';
import 'package:flutter_starter/env.dart';
import 'package:flutter_starter/presenter/navigation/navigation.dart';

class App extends StatelessWidget {
  static final _appRouter = AppRouter();

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<SettingsBloc>().state.theme;

    return MultiBlocListener(
      listeners: [
        // Automatically navigate back to the login page when the user logged out
        BlocListener<AuthBloc, AuthState>(
          listenWhen: (previousState, state) =>
              previousState.loggedIn != state.loggedIn && state.loggedIn == false,
          listener: (context, state) => context.router.replaceAll([const LoginRoute()]),
        ),
      ],
      child: MaterialApp.router(
        title: AppEnv.appName,
        theme: appTheme.themeData,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: [
          ...context.localizationDelegates,
          // more delegates here
        ],
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
