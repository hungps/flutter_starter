import 'package:flutter/material.dart';

class AppStyles {
  final List<BoxShadow> shadow1;
  final List<BoxShadow> shadow2;
  final List<BoxShadow> shadow3;
  final List<BoxShadow> shadow4;
  final List<BoxShadow> shadow5;
  final List<BoxShadow> shadow6;
  final List<BoxShadow> shadow7;
  final List<BoxShadow> bottomBarShadow;

  final ButtonStyle buttonSmall;
  final ButtonStyle buttonMedium;
  final ButtonStyle buttonLarge;
  final ButtonStyle buttonText;

  const AppStyles({
    required this.shadow1,
    required this.shadow2,
    required this.shadow3,
    required this.shadow4,
    required this.shadow5,
    required this.shadow6,
    required this.shadow7,
    required this.bottomBarShadow,
    required this.buttonSmall,
    required this.buttonMedium,
    required this.buttonLarge,
    required this.buttonText,
  });
}
