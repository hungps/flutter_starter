import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/data/states/theme/theme_event.dart';
import 'package:flutter_starter/presenter/themes/themes.dart';

class ThemeBloc extends Bloc<ThemeEvent, AppTheme> {
  ThemeBloc() : super(AppTheme.defaultTheme) {
    on<ThemeChanged>(_onThemeChanged);
  }

  Future<void> _onThemeChanged(ThemeChanged event, Emitter<AppTheme> emit) async {
    emit(event.theme);
  }
}
