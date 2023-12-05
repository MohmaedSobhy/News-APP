import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Feature/home/presentation/controller/news_status.dart';
import 'package:news_app/Feature/home/presentation/views/categoies_view.dart';
import '../controller/news_cubite.dart';
import '../screens/article_page.dart';
import '../widgets/news_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var newsCubit = NewCubit.get(context);
    return BlocBuilder<NewCubit, NewsState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CategoriesView(),
            (newsCubit.articles.isEmpty || state is FetchNewsFailed)
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
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
                                      hello:
                                          newsCubit.articles[index].articleUrl);
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
          ],
        );
      },
    );
  }
}
