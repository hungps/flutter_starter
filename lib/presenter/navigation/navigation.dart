import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter/presenter/pages/home/home.dart';
import 'package:flutter_starter/presenter/pages/login/login.dart';
import 'package:flutter_starter/presenter/pages/splash/splash.dart';

part 'navigation.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashRoute.page),
        AutoRoute(path: '/login', page: LoginRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
      ];

  @override
  List<AutoRouteGuard> get guards => [];

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
}
