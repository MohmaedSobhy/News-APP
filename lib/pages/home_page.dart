import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/constanstent.dart';
import 'package:news_app/cubit/news_cubite.dart';
import 'package:news_app/cubit/news_status.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/pages/article_page.dart';
import 'package:news_app/views/category_card.dart';
import 'package:news_app/views/news_card.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
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
                        newsCubit.GetAllNewUsingCategory(
                            category: CategoryModel.getDummyData()[index].txt);
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
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
                                  hello: newsCubit.articles[index].articleUrl);
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
