import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/presenter/themes/colors.dart';
import 'package:flutter_starter/presenter/themes/themes.dart';
import 'package:flutter_starter/presenter/themes/themes/light.dart';

void main() {
  group('LightAppTheme', () {
    const theme = LightAppTheme();

    test('name is "light"', () {
      expect(theme.name, 'light');
    });

    test('brightness is Brightness.light', () {
      expect(theme.brightness, Brightness.light);
    });

    test('primary color is AppColors.red', () {
      expect(theme.colors.primary, AppColors.red);
    });

    test('background is white', () {
      expect(theme.colors.background, const Color(0xFFFFFFFF));
    });

    test('secondary is purple-blue', () {
      expect(theme.colors.secondary, const Color(0xFF6C79DB));
    });

    test('error matches primary (red)', () {
      expect(theme.colors.error, AppColors.red);
    });

    test('fontFamily defaults to Roboto', () {
      expect(theme.fontFamily, 'Roboto');
    });

    test('baseColorScheme is light when brightness is light', () {
      expect(theme.baseColorScheme, isA<ColorScheme>());
      expect(theme.baseColorScheme.brightness, Brightness.light);
    });

    test('themeData has useMaterial3 false', () {
      expect(theme.themeData.useMaterial3, isFalse);
    });

    test('themeData platform is iOS', () {
      expect(theme.themeData.platform, TargetPlatform.iOS);
    });
  });

  group('AppTheme.copyWith', () {
    const base = LightAppTheme();

    test('returns same values when no overrides', () {
      final copy = base.copyWith();
      expect(copy.name, base.name);
      expect(copy.brightness, base.brightness);
    });

    test('overrides name', () {
      final copy = base.copyWith(name: 'custom');
      expect(copy.name, 'custom');
      expect(copy.brightness, base.brightness);
    });

    test('overrides brightness', () {
      final copy = base.copyWith(brightness: Brightness.dark);
      expect(copy.brightness, Brightness.dark);
      expect(copy.name, base.name);
    });
  });

  group('AppTheme.lerp', () {
    const themeA = LightAppTheme();
    const themeB = LightAppTheme();

    test('returns this when other is not an AppTheme', () {
      final result = themeA.lerp(null, 0.5);
      expect(result, same(themeA));
    });

    test('returns valid AppTheme when lerping two AppThemes at t=0', () {
      final result = themeA.lerp(themeB, 0.0);
      expect(result, isA<AppTheme>());
      expect(result.name, themeA.name);
    });

    test('returns valid AppTheme when lerping two AppThemes at t=1', () {
      final result = themeA.lerp(themeB, 1.0);
      expect(result, isA<AppTheme>());
    });

    test('returns valid AppTheme when lerping at t=0.5', () {
      final result = themeA.lerp(themeB, 0.5);
      expect(result, isA<AppTheme>());
    });
  });

  group('AppTheme.themeData extensions', () {
    test('themeData contains AppTheme extension', () {
      const theme = LightAppTheme();
      final ext = theme.themeData.extension<AppTheme>();
      expect(ext, isNotNull);
      expect(ext, isA<AppTheme>());
    });
  });
}
