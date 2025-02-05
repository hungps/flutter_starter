// ignore_for_file: avoid_print
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavigationLogger extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('[Route] didPush: ${route.data?.path} - ${route.settings.name}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print('[Route] didInitTabRoute: ${route.path} - ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print('[Route] didChangeTabRoute: ${route.path} - ${route.name}');
  }
}
