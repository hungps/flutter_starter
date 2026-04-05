import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/data/states/settings/settings_bloc.dart';
import 'package:flutter_starter/data/states/settings/settings_event.dart';
import 'package:flutter_starter/data/states/settings/settings_state.dart';
import 'package:flutter_starter/presenter/themes/themes/light.dart';

void main() {
  group('SettingsBloc', () {
    test('initial state has LightAppTheme', () {
      final bloc = SettingsBloc();
      expect(bloc.state.theme, isA<LightAppTheme>());
      bloc.close();
    });

    blocTest<SettingsBloc, SettingsState>(
      'emits state with new theme on SettingsThemeChanged',
      build: SettingsBloc.new,
      act: (bloc) {
        const newTheme = LightAppTheme();
        bloc.add(SettingsThemeChanged(newTheme));
      },
      verify: (bloc) {
        expect(bloc.state.theme, isA<LightAppTheme>());
      },
    );

    blocTest<SettingsBloc, SettingsState>(
      'updates theme when multiple events are dispatched',
      build: SettingsBloc.new,
      act: (bloc) {
        bloc
          ..add(const SettingsThemeChanged(LightAppTheme()))
          ..add(const SettingsThemeChanged(LightAppTheme()));
      },
      verify: (bloc) {
        expect(bloc.state.theme, isA<LightAppTheme>());
      },
    );
  });
}
