import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class NoNewsForCategoryViews extends StatelessWidget {
  const NoNewsForCategoryViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        'images/app_icon.png',
        height: 500,
        placeholderBuilder: (BuildContext context) {
          return const CircularProgressIndicator(
            color: Colors.blue,
          );
        },
      ),
    );
  }
}
