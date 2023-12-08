import 'package:flutter/material.dart';

import '../../data/model/news_model.dart';
import '../widgets/news_card.dart';

class FetchAllnewsByCategorySucess extends StatelessWidget {
  final List<NewsModel> news;
  const FetchAllnewsByCategorySucess({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (context, index) {
        return NewsCard(articleModel: news[index], function: () {});
      },
    );
  }
}
