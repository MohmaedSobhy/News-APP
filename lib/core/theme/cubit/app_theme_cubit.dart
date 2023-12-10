import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../helper/cache_helper.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  static AppThemeCubit? appThemeCubit;

  AppThemeCubit._privateConstructor() : super(ThemeAppInitial());

  static AppThemeCubit getInstanse() {
    appThemeCubit ??= AppThemeCubit._privateConstructor();
    return appThemeCubit!;
  }

  bool isLight = true;
  IconData icon = Icons.light_mode;

  Future<void> getCurrentTheme() async {
    await CacheHelper.checkIfKeyExists(CacheHelper.appThemeKey)
        .then((exist) async {
      if (exist) {
        isLight = CacheHelper.get(key: CacheHelper.appThemeKey);
        if (isLight) {
          emit(LigthThemeState());
        } else {
          emit(DarkThemeState());
        }
      } else {
        await CacheHelper.put(key: CacheHelper.appThemeKey, value: isLight);
        emit(LigthThemeState());
      }
    });
  }

  void changeTheme() async {
    isLight = !isLight;
    if (isLight) {
      icon = Icons.light_mode;
      emit(LigthThemeState());
    } else {
      icon = Icons.dark_mode;
      emit(DarkThemeState());
    }
    await CacheHelper.put(key: CacheHelper.appThemeKey, value: isLight);
  }
}
