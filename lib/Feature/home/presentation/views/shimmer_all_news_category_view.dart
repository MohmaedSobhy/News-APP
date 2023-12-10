import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/presentation/widgets/shimmer_news_category_card.dart';

class ShimmerNewsByCategoryView extends StatelessWidget {
  const ShimmerNewsByCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: MediaQuery.sizeOf(context).width * 0.02,
          ),
          child: const ShimmerNewsCategoryCard(),
        );
      },
    );
  }
}
