import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/shimmer_effect.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPopulerNewsItem extends StatelessWidget {
  const ShimmerPopulerNewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade400,
        highlightColor: Colors.grey.shade200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.33,
              child: AspectRatio(
                aspectRatio: 5 / 4,
                child: ClipRRect(
                  child: ShimmerEffectWidget(
                    width: MediaQuery.sizeOf(context).width * 0.33,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerEffectWidget(
                    width: MediaQuery.sizeOf(context).width * 0.45,
                    higth: 22,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ShimmerEffectWidget(
                    width: MediaQuery.sizeOf(context).width * 0.35,
                    higth: 20,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ShimmerEffectWidget(
                    width: MediaQuery.sizeOf(context).width * 0.25,
                    higth: 22,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
