import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppLanguages extends StatelessWidget {
  static const String translationsPath = 'lib/presenter/languages/translations';
  static const List<Locale> supportedLocales = [Locale('en'), Locale('vi')];
  static const Locale fallbackLocale = Locale('en');

  final Widget child;

  const AppLanguages({required this.child});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: translationsPath,
      supportedLocales: supportedLocales,
      fallbackLocale: fallbackLocale,
      child: child,
    );
  }
}
