import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/Feature/home/data/model/news_model.dart';
import 'package:news_app/Feature/home/presentation/widgets/populer_news_item.dart';
import 'package:news_app/core/routes/app_router.dart';

class PopulerNewsListView extends StatelessWidget {
  final List<NewsModel> news;
  const PopulerNewsListView({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: news.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: CustomePopulerNewsItem(
            newsModel: news[index],
            onPressed: () {
              GoRouter.of(context).push(
                AppRouter.newsDetailes,
                extra: news[index].articleUrl,
              );
            },
          ),
        );
      },
    );
  }
}
