import 'package:flutter/material.dart';
import 'package:flutter_starter/presenter/navigation/navigation.dart';

class App extends StatelessWidget {
  static final _appRouter = AppRouter();

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
