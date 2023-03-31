import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter/presenter/pages/home/home.dart';

part 'navigation.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
