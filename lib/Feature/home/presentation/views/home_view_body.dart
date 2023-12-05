import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Feature/home/presentation/controller/news_status.dart';
import 'package:news_app/Feature/home/presentation/views/categoies_view.dart';
import '../controller/news_cubite.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewCubit, NewsState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CategoriesView(),
          ],
        );
      },
    );
  }
}
