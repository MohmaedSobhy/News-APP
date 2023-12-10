import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerNewsCategoryCard extends StatelessWidget {
  const ShimmerNewsCategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade300,
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.28,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.9),
            borderRadius: BorderRadius.circular(9),
          ),
        ),
      ),
    );
  }
}
