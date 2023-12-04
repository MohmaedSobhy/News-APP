import 'package:flutter/material.dart';
import '../views/custome_title_app_bar.dart';
import '../views/home_view_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomeTitleAppBarView(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.light_mode))
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
