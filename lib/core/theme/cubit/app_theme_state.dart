part of 'app_theme_cubit.dart';

@immutable
sealed class AppThemeState {}

class ThemeAppInitial extends AppThemeState {}

class LigthThemeState extends AppThemeState {}

class DarkThemeState extends AppThemeState {}
