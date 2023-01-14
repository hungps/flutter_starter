import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_starter/di.dart';
import 'package:flutter_starter/presenter/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterConfig.loadEnvVariables();

  configureDependencies();

  runApp(const App());
}
