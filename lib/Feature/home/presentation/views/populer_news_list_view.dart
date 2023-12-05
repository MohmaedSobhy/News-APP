import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/presentation/widgets/populer_news_item.dart';
import '../controller/news_cubite.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    var newsCubit = NewCubit.get(context);
    return Expanded(
      child: ListView.builder(
        itemCount: newsCubit.articles.length,
        itemBuilder: (context, index) {
          return CustomeNewsItem(
            newsModel: newsCubit.articles[index],
          );
        },
      ),
    );
  }
}
