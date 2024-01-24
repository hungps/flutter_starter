import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/data/entities/request/login_params.dart';
import 'package:flutter_starter/di.dart';
import 'package:flutter_starter/presenter/languages/translation_keys.g.dart';
import 'package:flutter_starter/presenter/navigation/navigation.dart';
import 'package:flutter_starter/presenter/pages/login/login_bloc.dart';
import 'package:flutter_starter/presenter/pages/login/login_event.dart';
import 'package:flutter_starter/presenter/pages/login/login_selector.dart';
import 'package:flutter_starter/presenter/pages/login/login_state.dart';
import 'package:flutter_starter/presenter/themes/extensions.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginBloc _bloc = provider.get<LoginBloc>();

  String username = '';
  String password = '';

  @override
  void dispose() {
    _bloc.close();

    super.dispose();
  }

  void _onLoginPressed() {
    _bloc.add(LoginStarted(LoginParams(
      username: username,
      password: password,
    )));
  }

  void _onSuccess(BuildContext context, LoginState state) {
    context.router.replaceAll([const HomeRoute()]);
  }

  void _onError(BuildContext context, LoginState state) {
    if (state.error == null) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(tr(state.error!.message)),
        backgroundColor: context.colors.error,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: MultiBlocListener(
        listeners: [
          LoginSuccessListener(listener: _onSuccess),
          LoginFailureListener(listener: _onError),
        ],
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    tr(LocaleKeys.Login),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    decoration: InputDecoration(hintText: tr(LocaleKeys.Username)),
                    onChanged: (value) => username = value,
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(hintText: tr(LocaleKeys.Password)),
                    obscureText: true,
                    onChanged: (value) => password = value,
                  ),
                  const SizedBox(height: 16),
                  LoginStatusSelector(
                    builder: (status) => FilledButton(
                      onPressed: _onLoginPressed,
                      child: status == LoginStatus.loading
                          ? const SizedBox.square(
                              dimension: 24,
                              child: CircularProgressIndicator(color: Colors.white),
                            )
                          : Text(tr(LocaleKeys.Login)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
