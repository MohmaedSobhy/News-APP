import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/Feature/home/presentation/controller/news_by_category_cubit.dart/news_by_category_cubit.dart';
import 'package:news_app/Feature/home/presentation/screens/category_screen.dart';
import 'package:news_app/Feature/home/presentation/screens/home_screen.dart';

abstract class AppRouter {
  // first point to default screen
  static const String homeScreen = '/';
  static const String categoryScreen = '/categoryScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
          path: homeScreen,
          builder: (context, state) {
            return const HomeScreen();
          }),
      GoRoute(
        path: categoryScreen,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => NewsByCategoryCubit(),
            child: CategoryScreen(
              category: state.error as String,
            ),
          );
        },
      ),
    ],
  );
}
