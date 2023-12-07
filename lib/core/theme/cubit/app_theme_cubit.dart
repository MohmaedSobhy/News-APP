import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(ThemeAppInitial());

  bool isLight = true;

  static AppThemeCubit get(context) {
    return BlocProvider.of(context);
  }

  void changeTheme() {
    isLight = !isLight;
    emit(ChangeAppTheme());
  }
}
