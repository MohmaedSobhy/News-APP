import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_router.dart';
import '../../data/model/news_model.dart';
import '../widgets/news_category_card.dart';

class FetchAllnewsByCategorySucess extends StatelessWidget {
  final List<NewsModel> news;
  const FetchAllnewsByCategorySucess({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (context, index) {
        return NewsCategoryCard(
            articleModel: news[index],
            function: () {
              GoRouter.of(context).push(
                AppRouter.newsDetailes,
                extra: news[index].articleUrl,
              );
            });
      },
    );
  }
}
