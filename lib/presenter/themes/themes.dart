import 'package:flutter/material.dart';
import 'package:flutter_starter/presenter/themes/colors.dart';
import 'package:flutter_starter/presenter/themes/styles.dart';
import 'package:flutter_starter/presenter/themes/typography.dart';
import 'package:flutter_starter/presenter/themes/extensions.dart';

const AppTheme lightTheme = AppTheme(
  name: 'light',
  colors: AppColors(
    primarySwatch: Colors.orange,
    primary: Color(0xFFFF961C),
    secondary: Color(0xFFFFAB49),
    accent: Color(0xFF27C754),
    background: Color(0xFFFFFFFF),
    backgroundDark: Color(0xFFFAFAFA),
    disabled: Color(0xFFF1F1F5),
    information: Color(0xFF5487F5),
    success: Color(0xFF00C48C),
    alert: Color(0xFFFBA707),
    warning: Color(0xFFFF9D5C),
    error: Color(0xFFF74360),
    text: Color(0xFF171725),
    border: Color(0xFFD3D3E2),
    hint: Color(0xFFD3D3E2),
  ),
  typographies: AppTypography(
    title1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      height: 1.14,
    ),
    headline1: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      height: 1.16,
    ),
    headline2: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      height: 1.33,
    ),
    body1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      height: 1.5,
    ),
    body2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5,
    ),
    body3: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    caption1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      height: 1.17,
    ),
    caption2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.7,
    ),
    button: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.5,
    ),
  ),
  styles: AppStyles(
    shadow1: [
      BoxShadow(
        color: Color(0x0D323247),
        offset: Offset(0, 3),
        blurRadius: 8,
        spreadRadius: -1,
      ),
      BoxShadow(
        color: Color(0x400C1A4B),
        offset: Offset.zero,
        blurRadius: 1,
        spreadRadius: 0,
      ),
    ],
    shadow2: [
      BoxShadow(
        color: Color(0x1A323247),
        offset: Offset(0, 4),
        blurRadius: 20,
        spreadRadius: -2,
      ),
      BoxShadow(
        color: Color(0x1A0C1A4B),
        offset: Offset.zero,
        blurRadius: 1,
        spreadRadius: 0,
      ),
    ],
    shadow3: [
      BoxShadow(
        color: Color(0x0D14253F),
        offset: Offset(0, 10),
        blurRadius: 16,
        spreadRadius: 0,
      ),
    ],
    shadow4: [
      BoxShadow(
        color: Color(0x26B0B7C3),
        offset: Offset(0, 23),
        blurRadius: 44,
        spreadRadius: 0,
      ),
    ],
    shadow5: [
      BoxShadow(
        color: Color(0x40B0B7C3),
        offset: Offset(0, 33),
        blurRadius: 62,
        spreadRadius: 0,
      ),
    ],
    shadow6: [
      BoxShadow(
        color: Color(0x33B0B7C3),
        offset: Offset(0, 44),
        blurRadius: 65,
        spreadRadius: 0,
      ),
    ],
    shadow7: [
      BoxShadow(
        color: Color(0x40B0B7C3),
        offset: Offset(0, 50),
        blurRadius: 77,
        spreadRadius: 0,
      ),
    ],
    bottomBarShadow: [
      BoxShadow(
        color: Color(0x12000000),
        offset: Offset(0, -4),
        blurRadius: 10,
      ),
    ],
    buttonSmall: ButtonStyle(
      padding: MaterialStatePropertyAll(
        EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
      ),
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          height: 1.3,
        ),
      ),
      minimumSize: MaterialStatePropertyAll(Size.zero),
    ),
    buttonMedium: ButtonStyle(
      padding: MaterialStatePropertyAll(
        EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 1.5,
        ),
      ),
      minimumSize: MaterialStatePropertyAll(Size.zero),
    ),
    buttonLarge: ButtonStyle(
      padding: MaterialStatePropertyAll(
        EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 1.5,
        ),
      ),
      minimumSize: MaterialStatePropertyAll(Size.zero),
    ),
    buttonText: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.transparent),
      padding: MaterialStatePropertyAll(EdgeInsets.zero),
      splashFactory: NoSplash.splashFactory,
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 1,
        ),
      ),
    ),
  ),
);

class AppTheme extends ThemeExtension<AppTheme> {
  static const AppTheme light = lightTheme;
  static const AppTheme defaultTheme = lightTheme;

  final String name;
  final AppColors colors;
  final AppTypography typographies;
  final AppStyles styles;

  const AppTheme({
    required this.name,
    required this.colors,
    required this.typographies,
    required this.styles,
  });

  ThemeData get themeData => ThemeData(
        platform: TargetPlatform.iOS,
        extensions: [this],
        primarySwatch: colors.primarySwatch,
        primaryColor: colors.primary,
        unselectedWidgetColor: colors.hint,
        disabledColor: colors.disabled,
        scaffoldBackgroundColor: colors.backgroundDark,
        hintColor: colors.hint,
        dividerColor: colors.border,
        colorScheme: ColorScheme.light(
          primary: colors.primary,
          secondary: colors.secondary,
          error: colors.error,
          shadow: colors.border,
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          titleTextStyle: typographies.headline2,
        ),
        tabBarTheme: TabBarTheme(
          labelStyle: typographies.button,
          unselectedLabelStyle: typographies.button,
          labelColor: colors.primary,
          unselectedLabelColor: colors.hint,
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: styles.buttonLarge.copyWith(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: styles.buttonLarge.copyWith(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: styles.buttonLarge.copyWith(
            side: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.disabled)
                  ? BorderSide(color: colors.disabled)
                  : null;
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: styles.buttonLarge.copyWith(
            backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
            foregroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          hintStyle: typographies.body2.withColor(colors.hint),
          labelStyle: typographies.body2.withColor(colors.hint),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: colors.border),
          ),
          errorStyle: typographies.body3,
        ),
        checkboxTheme: CheckboxThemeData(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          side: BorderSide(color: colors.border),
        ),
        radioTheme: const RadioThemeData(
          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colors.background,
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: colors.primary,
          unselectedItemColor: colors.border,
          selectedLabelStyle: typographies.caption1,
          unselectedLabelStyle: typographies.caption1,
          type: BottomNavigationBarType.fixed,
        ),
        dividerTheme: DividerThemeData(
          color: colors.disabled,
          thickness: 1,
          space: 1,
        ),
      );

  @override
  AppTheme copyWith({
    String? name,
    AppColors? colors,
    AppTypography? typographies,
    AppStyles? styles,
  }) {
    return AppTheme(
      name: name ?? this.name,
      colors: colors ?? this.colors,
      typographies: typographies ?? this.typographies,
      styles: styles ?? this.styles,
    );
  }

  @override
  AppTheme lerp(covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) {
      return this;
    }
    return AppTheme(
      name: name,
      colors: colors.lerp(other.colors, t),
      typographies: typographies.lerp(other.typographies, t),
      styles: styles,
    );
  }
}
