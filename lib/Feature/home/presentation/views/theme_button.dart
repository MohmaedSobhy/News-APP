import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/theme/cubit/app_theme_cubit.dart';

class IconThemeButton extends StatelessWidget {
  const IconThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            AppThemeCubit.getInstanse().changeTheme();
          },
          icon: Icon(AppThemeCubit.getInstanse().icon),
        );
      },
    );
  }
}
