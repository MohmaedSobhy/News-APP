import 'package:flutter/material.dart';

import '../controller/news_cubite.dart';
import '../screens/article_page.dart';
import '../widgets/news_card.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    var newsCubit = NewCubit.get(context);
    return Expanded(
      child: ListView.builder(
        itemCount: newsCubit.articles.length,
        itemBuilder: (context, index) {
          return NewsCard(
            articleModel: newsCubit.articles[index],
            function: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ArticlePage(
                      hello: newsCubit.articles[index].articleUrl,
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
