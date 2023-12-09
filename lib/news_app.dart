import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/routes/app_router.dart';
import 'package:news_app/core/theme/app_theme.dart';
import 'Feature/home/presentation/controller/populer_news_cubit/populer_news_cubit.dart';
import 'core/theme/cubit/app_theme_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PopulerNewsCubit()..getAllNews(),
          ),
          BlocProvider(
            create: (context) => AppThemeCubit(),
          ),
        ],
        child: BlocBuilder<AppThemeCubit, AppThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
              theme: AppThemeCubit.get(context).isLight
                  ? AppTheme.ligthTheme
                  : AppTheme.dartTheme,
            );
          },
        ));
  }
}
