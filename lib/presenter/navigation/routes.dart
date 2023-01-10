import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_starter/presenter/widgets/pages/home/home.dart';

part 'routes.g.dart';

final appRouter = GoRouter(
  initialLocation: $homeScreenRoute.path,
  routes: $appRoutes,
);

@TypedGoRoute<HomeScreenRoute>(path: '/')
@immutable
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
