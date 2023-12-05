import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/presentation/views/categoies_view.dart';
import 'package:news_app/Feature/home/presentation/views/populer_news_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: CategoriesView(),
        ),
        SliverFillRemaining(
          child: PopulerNewView(),
        ),
      ],
    );
  }
}
