import 'package:flutter/material.dart';
import 'package:news_app/core/utils/constanstent.dart';

class NoItemsView extends StatelessWidget {
  const NoItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        ConstantString.noNews,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
