import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/ui/views/no_items_view.dart';
import 'package:news_app/utils/constanstent.dart';
import 'package:news_app/core/cubit/news_cubite.dart';
import 'package:news_app/core/cubit/news_status.dart';
import 'package:news_app/core/model/category_model.dart';
import 'package:news_app/ui/pages/article_page.dart';
import 'package:news_app/ui/views/category_card.dart';
import 'package:news_app/ui/views/news_card.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var newsCubit = NewCubit.get(context);
    return BlocConsumer<NewCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Row(mainAxisSize: MainAxisSize.min, children: [
              Text(
                "Flutter",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                ),
              ),
              Text(
                ConstantString.title,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15.sp,
                ),
              ),
            ]),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    CategoryModel.getDummyData().length,
                    (index) => CategoryCard(
                      categoryModel: CategoryModel.getDummyData()[index],
                      function: () {
                        newsCubit.getAllNewUsingCategory(
                            category: CategoryModel.getDummyData()[index].txt);
                      },
                    ),
                  ),
                ),
              ),
              (newsCubit.articles.isEmpty || state is FailedToGetNews)
                  ? const Center(child: CircularProgressIndicator(),)
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
                                        hello: newsCubit
                                            .articles[index].articleUrl);
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
