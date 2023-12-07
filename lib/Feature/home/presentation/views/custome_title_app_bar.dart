import 'package:flutter/material.dart';

class CustomeTitleAppBarView extends StatelessWidget {
  final String title;
  const CustomeTitleAppBarView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}
