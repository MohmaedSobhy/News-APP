import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/presentation/views/drawer_view.dart';
import '../views/custome_title_app_bar.dart';
import '../views/home_view_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerView(),
      ),
      appBar: AppBar(
        title: const CustomeTitleAppBarView(),
      ),
      body: const HomeViewBody(),
    );
  }
}
