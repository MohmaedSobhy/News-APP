import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/data/model/news_model.dart';
import 'package:news_app/Feature/home/presentation/widgets/populer_news_item.dart';

class PopulerNewsListView extends StatelessWidget {
  final List<NewsModel> news;
  const PopulerNewsListView({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: news.length,
      itemBuilder: (context, index) {
        return CustomeNewsItem(
          newsModel: news[index],
        );
      },
    );
  }
}
