import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Feature/home/presentation/screens/home_screen.dart';
import 'package:sizer/sizer.dart';

import 'Feature/home/presentation/controller/news_cubite.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewCubit()..getAllNews(),
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const HomeScreen(),
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              elevation: 0.0,
              backgroundColor: Colors.white,
              centerTitle: true,
            ),
          ),
        );
      }),
    );
  }
}
