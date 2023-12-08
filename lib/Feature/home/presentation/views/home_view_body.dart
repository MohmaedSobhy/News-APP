import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Feature/home/presentation/controller/populer_news_cubit/populer_news_cubit.dart';
import 'package:news_app/Feature/home/presentation/controller/populer_news_cubit/populer_news_status.dart';
import 'package:news_app/Feature/home/presentation/views/categoies_view.dart';
import 'package:news_app/core/widgets/cricle_loading_indicator.dart';

import 'populer_news_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CategoriesView(),
                Text("Populer News",
                    style: Theme.of(context).textTheme.displayMedium),
              ],
            ),
          ),
        ),
        const SliverFillRemaining(
          child: FetchPopulerNews(),
        ),
      ],
    );
  }
}

class FetchPopulerNews extends StatelessWidget {
  const FetchPopulerNews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopulerNewsCubit, PopulerNewsState>(
      builder: (context, state) {
        if (state is FetchPopulerNewsLoading) {
          return const CustomeCircleLoading();
        } else if (state is FetchPopulerNewsSucess) {
          return Expanded(child: PopulerNewsListView(news: state.news));
        }
        return const CustomeCircleLoading();
      },
    );
  }
}
