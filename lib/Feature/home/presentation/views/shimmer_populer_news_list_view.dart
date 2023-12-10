import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/presentation/widgets/shimmer_populer_news_item.dart';

class ShimmerPopulerListViewItems extends StatelessWidget {
  const ShimmerPopulerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ShimmerPopulerNewsItem();
      },
    );
  }
}
