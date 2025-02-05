import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/data/states/auth/auth_bloc.dart';
import 'package:flutter_starter/data/states/bloc_observer.dart';
import 'package:flutter_starter/di.dart';
import 'package:flutter_starter/presenter/app.dart';
import 'package:flutter_starter/presenter/languages/languages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await configureDependencies();

  Bloc.observer = AppBlocObserver(provider.get<AuthBloc>());

  runApp(
    const AppLanguages(
      child: GlobalBlocProviders(
        child: App(),
      ),
    ),
  );
}

