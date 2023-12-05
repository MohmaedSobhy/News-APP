import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/data/model/category_model.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  CategoryModel categoryModel;

  CategoryCard({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: CachedNetworkImage(
                imageUrl: categoryModel.imageUrl,
                errorWidget: (context, url, error) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                placeholder: (context, url) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
