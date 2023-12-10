import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/Feature/home/presentation/controller/news_by_category_cubit.dart/news_by_category_cubit.dart';
import 'package:news_app/Feature/home/presentation/views/custome_title_app_bar.dart';
import 'package:news_app/Feature/home/presentation/views/fetch_all_news_by_category_sucess.dart';
import 'package:news_app/Feature/home/presentation/views/shimmer_all_news_category_view.dart';
import 'package:news_app/core/widgets/fauiler_widget.dart';
import 'package:news_app/core/widgets/no_internet_conncetion.dart';
import 'package:news_app/core/widgets/no_news_forCategory.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: NewsByCategoryCubit.getInstanse()
        ..fetchNewsByCategory(category: category),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          title: CustomeTitleAppBarView(
            title: category,
          ),
        ),
        body: OfflineBuilder(
          connectivityBuilder: (BuildContext context,
              ConnectivityResult connectivity, Widget child) {
            return (connectivity != ConnectivityResult.none)
                ? const CategoryBodyScreen()
                : const NoInternetConnectionWidget();
          },
          child: const NoInternetConnectionWidget(),
        ),
      ),
    );
  }
}

class CategoryBodyScreen extends StatelessWidget {
  const CategoryBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsByCategoryCubit, NewsByCategoryState>(
      builder: (context, state) {
        if (state is FetchNewsByCategorySucess) {
          if (state.news.isEmpty) {
            return const NoNewsForThisCategoryViews();
          }
          return FetchAllnewsByCategorySucess(news: state.news);
        } else if (state is FetchNewsByCategoryFailed) {
          return CustomeFauilerWidget(errorMessage: state.errorMessage);
        }
        return const ShimmerNewsByCategoryView();
      },
    );
  }
}
