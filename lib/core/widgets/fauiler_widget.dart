import 'package:flutter/material.dart';

class CustomeFauilerWidget extends StatelessWidget {
  final String errorMessage;
  const CustomeFauilerWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: MediaQuery.sizeOf(context).width * 0.25,
            image: const AssetImage(
              'images/exclamation-mark.png',
            ),
          ),
          SizedBox(
            width: 200,
            child: Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontStyle: FontStyle.normal,
                    wordSpacing: 2,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
