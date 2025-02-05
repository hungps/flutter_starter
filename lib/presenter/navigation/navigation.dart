import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter/data/states/auth/auth_bloc.dart';
import 'package:flutter_starter/presenter/pages/home/home.dart';
import 'package:flutter_starter/presenter/pages/login/login.dart';
import 'package:flutter_starter/presenter/pages/splash/splash.dart';
import 'package:injectable/injectable.dart';

part 'navigation.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  final AuthBloc _authBloc;

  AppRouter({
    required AuthBloc authBloc,
  }) : _authBloc = authBloc;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashRoute.page),
        AutoRoute(path: '/login', page: LoginRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
      ];

  bool isUnauthorizedRoute(String routeName) => [
        LoginRoute.name,
      ].contains(routeName);

  bool isAuthorizedRoute(String routeName) => [
        HomeRoute.name,
      ].contains(routeName);

  @override
  List<AutoRouteGuard> get guards => [
        AutoRouteGuard.simple(
          (resolver, router) {
            final isAuthenticated = _authBloc.state.loggedIn;

            if (isAuthorizedRoute(resolver.routeName) && !isAuthenticated) {
              return resolver.redirect(LoginRoute(), replace: true);
            }

            if (isUnauthorizedRoute(resolver.routeName) && isAuthenticated) {
              return resolver.redirect(HomeRoute(), replace: true);
            }

            resolver.next(true);
          },
        ),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
}
