import 'package:flutter/material.dart';

class CustomeCircleLoading extends StatelessWidget {
  const CustomeCircleLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.blueAccent,
      ),
    );
  }
}
