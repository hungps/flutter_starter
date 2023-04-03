import 'package:flutter/material.dart';

class AppTypography {
  final TextStyle title1;
  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;
  final TextStyle caption1;
  final TextStyle caption2;
  final TextStyle button;

  const AppTypography({
    required this.title1,
    required this.headline1,
    required this.headline2,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.caption1,
    required this.caption2,
    required this.button,
  });

  AppTypography lerp(covariant dynamic other, double t) {
    if (other is! AppTypography) {
      return this;
    }
    return AppTypography(
      title1: TextStyle.lerp(title1, other.title1, t)!,
      headline1: TextStyle.lerp(headline1, other.headline1, t)!,
      headline2: TextStyle.lerp(headline2, other.headline2, t)!,
      body1: TextStyle.lerp(body1, other.body1, t)!,
      body2: TextStyle.lerp(body2, other.body2, t)!,
      body3: TextStyle.lerp(body3, other.body3, t)!,
      caption1: TextStyle.lerp(caption1, other.caption1, t)!,
      caption2: TextStyle.lerp(caption2, other.caption2, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
    );
  }
}
