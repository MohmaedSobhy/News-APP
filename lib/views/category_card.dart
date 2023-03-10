import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  CategoryModel categoryModel;
  VoidCallback function;
  CategoryCard(
      {super.key, required this.categoryModel, required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: function,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image(
                  width: 40.w,
                  height: 10.h,
                  image: NetworkImage(categoryModel.imageUrl),
                  fit: BoxFit.cover),
            ),
            Container(
              width: 40.w,
              height: 10.h,
              color: Colors.black.withOpacity(0.1),
            ),
            Text(
              categoryModel.txt,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 15.sp),
            ),
          ],
        ),
      ),
    );
  }
}
