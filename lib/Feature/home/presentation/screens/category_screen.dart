import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/presentation/views/custome_title_app_bar.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomeTitleAppBarView(
          title: category,
        ),
      ),
    );
  }
}
