import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/presenter/themes/colors.dart';

final _colorsA = AppThemeColors(
  primarySwatch: Colors.red,
  primary: const Color(0xFFFF0000),
  secondary: const Color(0xFF00FF00),
  accent: const Color(0xFF0000FF),
  background: const Color(0xFFFFFFFF),
  backgroundDark: const Color(0xFFF0F0F0),
  disabled: const Color(0xFF888888),
  information: const Color(0xFF1111FF),
  success: const Color(0xFF00AA00),
  alert: const Color(0xFFFFAA00),
  warning: const Color(0xFFFF5500),
  error: const Color(0xFFCC0000),
  text: const Color(0xFF111111),
  textOnPrimary: const Color(0xFFFFFFFF),
  border: const Color(0xFFDDDDDD),
  hint: const Color(0xFF999999),
);

final _colorsB = AppThemeColors(
  primarySwatch: Colors.blue,
  primary: const Color(0xFF0000FF),
  secondary: const Color(0xFFFF00FF),
  accent: const Color(0xFFFFFF00),
  background: const Color(0xFF000000),
  backgroundDark: const Color(0xFF111111),
  disabled: const Color(0xFF444444),
  information: const Color(0xFF2222FF),
  success: const Color(0xFF00BB00),
  alert: const Color(0xFFFFBB00),
  warning: const Color(0xFFFF6600),
  error: const Color(0xFFDD1111),
  text: const Color(0xFF222222),
  textOnPrimary: const Color(0xFF000000),
  border: const Color(0xFFEEEEEE),
  hint: const Color(0xFFAAAAAA),
);

void main() {
  group('AppThemeColors.lerp', () {
    test('returns this when other is not AppThemeColors', () {
      final result = _colorsA.lerp('not colors', 0.5);
      expect(result, same(_colorsA));
    });

    test('returns this when t=0', () {
      final result = _colorsA.lerp(_colorsB, 0.0);
      expect(result.primary, _colorsA.primary);
    });

    test('returns other when t=1', () {
      final result = _colorsA.lerp(_colorsB, 1.0);
      expect(result.primary, _colorsB.primary);
    });

    test('interpolates colors at t=0.5', () {
      final result = _colorsA.lerp(_colorsB, 0.5);
      expect(result.primary, Color.lerp(_colorsA.primary, _colorsB.primary, 0.5));
      expect(result.secondary, Color.lerp(_colorsA.secondary, _colorsB.secondary, 0.5));
    });

    test('preserves primarySwatch from original', () {
      final result = _colorsA.lerp(_colorsB, 0.5);
      expect(result.primarySwatch, _colorsA.primarySwatch);
    });
  });

  group('AppThemeColors.copyWith', () {
    test('returns same values when no overrides provided', () {
      final copy = _colorsA.copyWith();
      expect(copy.primary, _colorsA.primary);
      expect(copy.secondary, _colorsA.secondary);
      expect(copy.background, _colorsA.background);
    });

    test('overrides only specified fields', () {
      const newPrimary = Color(0xFF123456);
      final copy = _colorsA.copyWith(primary: newPrimary);
      expect(copy.primary, newPrimary);
      expect(copy.secondary, _colorsA.secondary);
      expect(copy.background, _colorsA.background);
    });

    test('can override all fields', () {
      final copy = _colorsA.copyWith(
        primarySwatch: Colors.green,
        primary: const Color(0xFF010101),
        secondary: const Color(0xFF020202),
        accent: const Color(0xFF030303),
        background: const Color(0xFF040404),
        backgroundDark: const Color(0xFF050505),
        disabled: const Color(0xFF060606),
        information: const Color(0xFF070707),
        success: const Color(0xFF080808),
        alert: const Color(0xFF090909),
        warning: const Color(0xFF0A0A0A),
        error: const Color(0xFF0B0B0B),
        text: const Color(0xFF0C0C0C),
        textOnPrimary: const Color(0xFF0D0D0D),
        border: const Color(0xFF0E0E0E),
        hint: const Color(0xFF0F0F0F),
      );
      expect(copy.primary, const Color(0xFF010101));
      expect(copy.error, const Color(0xFF0B0B0B));
      expect(copy.hint, const Color(0xFF0F0F0F));
    });
  });

  group('AppColors constants', () {
    test('white is Colors.white', () {
      expect(AppColors.white, Colors.white);
    });

    test('black is Colors.black', () {
      expect(AppColors.black, Colors.black);
    });

    test('transparent is Colors.transparent', () {
      expect(AppColors.transparent, Colors.transparent);
    });

    test('red is correct hex color', () {
      expect(AppColors.red, const Color(0xFFFA6555));
    });
  });
}
