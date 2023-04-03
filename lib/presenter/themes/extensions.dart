import 'package:flutter/material.dart';
import 'package:flutter_starter/presenter/themes/colors.dart';
import 'package:flutter_starter/presenter/themes/styles.dart';
import 'package:flutter_starter/presenter/themes/themes.dart';
import 'package:flutter_starter/presenter/themes/typography.dart';

extension ThemeDataExtension on BuildContext {
  AppTheme get appTheme => Theme.of(this).extension<AppTheme>() ?? AppTheme.defaultTheme;

  AppTypography get typographies => appTheme.typographies;

  AppColors get colors => appTheme.colors;

  AppStyles get styles => appTheme.styles;
}

extension TextStyleExtension on TextStyle {
  TextStyle withHeight(double? height) => copyWith(height: height);

  TextStyle withColor(Color? color) => copyWith(color: color);

  TextStyle withSize(double? size) => copyWith(fontSize: size);

  TextStyle withWeight(FontWeight? weight) => copyWith(fontWeight: weight);
}
