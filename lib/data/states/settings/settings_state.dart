import 'package:flutter_starter/presenter/themes/themes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(AppTheme.defaultTheme) AppTheme theme,
  }) = _SettingsState;
}
