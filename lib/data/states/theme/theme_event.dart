import 'package:flutter_starter/presenter/themes/themes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.freezed.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.themeChanged(AppTheme theme) = ThemeChanged;
}
