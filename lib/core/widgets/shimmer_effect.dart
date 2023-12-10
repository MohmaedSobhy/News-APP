import 'package:flutter/material.dart';

class ShimmerEffectWidget extends StatelessWidget {
  final double? width;
  final double? higth;
  final BorderRadius? borderRadius;
  const ShimmerEffectWidget(
      {super.key, this.width, this.higth, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: higth,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: borderRadius ??
            const BorderRadius.all(
              Radius.circular(10),
            ),
      ),
    );
  }
}
