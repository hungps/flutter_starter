import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter/presenter/pages/home/home.dart';
import 'package:flutter_starter/presenter/pages/login/login.dart';
import 'package:flutter_starter/presenter/pages/splash/splash.dart';

part 'navigation.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: SplashRoute.page),
    AutoRoute(path: '/login', page: LoginRoute.page),
    AutoRoute(path: '/home', page: HomeRoute.page),
  ];
}
