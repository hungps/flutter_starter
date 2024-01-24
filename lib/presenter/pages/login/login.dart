import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/di.dart';
import 'package:flutter_starter/presenter/languages/translation_keys.g.dart';
import 'package:flutter_starter/presenter/navigation/navigation.dart';
import 'package:flutter_starter/presenter/pages/login/login_bloc.dart';
import 'package:flutter_starter/presenter/pages/login/login_event.dart';
import 'package:flutter_starter/presenter/pages/login/login_selector.dart';
import 'package:flutter_starter/presenter/pages/login/login_state.dart';
import 'package:flutter_starter/presenter/themes/extensions.dart';
import 'package:flutter_starter/presenter/widgets/loading_indicator.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginBloc _bloc = provider.get<LoginBloc>();

  @override
  void dispose() {
    _bloc.close();

    super.dispose();
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

  void _onUsernameChanged(String username) {
    _bloc.add(LoginUsernameChanged(username));
  }

  void _onPasswordChanged(String password) {
    _bloc.add(LoginPasswordChanged(password));
  }

  void _onLoginPressed() {
    _bloc.add(const LoginStarted());
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
                    style: context.typographies.heading,
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      hintText: tr(LocaleKeys.Username),
                    ),
                    onChanged: _onUsernameChanged,
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      hintText: tr(LocaleKeys.Password),
                    ),
                    obscureText: true,
                    onChanged: _onPasswordChanged,
                  ),
                  const SizedBox(height: 16),
                  LoginStatusSelector(
                    builder: (status) => FilledButton(
                      onPressed: _onLoginPressed,
                      child: status == LoginStatus.submitting
                          ? const AppFilledButtonLoadingIndicator()
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
