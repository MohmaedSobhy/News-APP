import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/data/model/category_model.dart';
import 'package:sizer/sizer.dart';

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
              child: Image(
                image: NetworkImage(categoryModel.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Text(
            categoryModel.categoryName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}
