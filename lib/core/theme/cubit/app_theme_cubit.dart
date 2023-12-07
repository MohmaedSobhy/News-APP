import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(ThemeAppInitial());

  bool isLight = true;
  IconData icon = Icons.light_mode;

  static AppThemeCubit get(context) {
    return BlocProvider.of(context);
  }

  void changeTheme() {
    isLight = !isLight;
    if (isLight) {
      icon = Icons.light_mode;
    } else {
      icon = Icons.dark_mode;
    }
    emit(ChangeAppTheme());
  }
}
