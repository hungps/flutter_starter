import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/presenter/themes/typography.dart';

void main() {
  group('AppThemeTypography defaults', () {
    const typography = AppThemeTypography();

    test('headingLarge has fontSize 32', () {
      expect(typography.headingLarge.fontSize, 32);
    });

    test('heading has fontSize 24', () {
      expect(typography.heading.fontSize, 24);
    });

    test('headingSmall has fontSize 20', () {
      expect(typography.headingSmall.fontSize, 20);
    });

    test('bodyExtraLarge has fontSize 20', () {
      expect(typography.bodyExtraLarge.fontSize, 20);
    });

    test('bodyLarge has fontSize 18', () {
      expect(typography.bodyLarge.fontSize, 18);
    });

    test('body has fontSize 16', () {
      expect(typography.body.fontSize, 16);
    });

    test('bodySmall has fontSize 14', () {
      expect(typography.bodySmall.fontSize, 14);
    });

    test('bodyExtraSmall has fontSize 12', () {
      expect(typography.bodyExtraSmall.fontSize, 12);
    });

    test('captionLarge has fontSize 14', () {
      expect(typography.captionLarge.fontSize, 14);
    });

    test('caption has fontSize 12', () {
      expect(typography.caption.fontSize, 12);
    });

    test('captionSmall has fontSize 10', () {
      expect(typography.captionSmall.fontSize, 10);
    });
  });

  group('AppThemeTypography.lerp', () {
    const typA = AppThemeTypography(
      headingLarge: TextStyle(fontSize: 32),
    );
    const typB = AppThemeTypography(
      headingLarge: TextStyle(fontSize: 64),
    );

    test('returns this when other is not AppThemeTypography', () {
      final result = typA.lerp('not typography', 0.5);
      expect(result, same(typA));
    });

    test('interpolates font sizes at t=0', () {
      final result = typA.lerp(typB, 0.0);
      expect(result.headingLarge.fontSize, closeTo(32, 0.1));
    });

    test('interpolates font sizes at t=1', () {
      final result = typA.lerp(typB, 1.0);
      expect(result.headingLarge.fontSize, closeTo(64, 0.1));
    });

    test('interpolates font sizes at t=0.5', () {
      final result = typA.lerp(typB, 0.5);
      expect(result.headingLarge.fontSize, closeTo(48, 0.1));
    });
  });
}
