import 'package:flutter/material.dart';
import 'package:flutter_starter/presenter/themes/extensions.dart';
import 'package:flutter_starter/presenter/themes/themes.dart';

class AppThemeBuilder extends StatelessWidget {
  final Widget Function(AppTheme theme) builder;

  const AppThemeBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return builder(context.appTheme);
  }
}
