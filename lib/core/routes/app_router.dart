import 'package:go_router/go_router.dart';
import 'package:news_app/Feature/home/presentation/screens/news_detailes_screen.dart';

import 'package:news_app/Feature/home/presentation/screens/category_screen.dart';
import 'package:news_app/Feature/home/presentation/screens/home_screen.dart';

abstract class AppRouter {
  static const String homeScreen = '/';
  static const String categoryScreen = '/category';
  static const String newsDetailes = '/newsDetailes';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeScreen,
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: categoryScreen,
        builder: (context, state) {
          return CategoryScreen(category: state.extra as String);
        },
      ),
      GoRoute(
        path: newsDetailes,
        builder: (context, state) {
          return NewsDetailes(newsUrl: state.extra as String);
        },
      ),
    ],
  );
}
