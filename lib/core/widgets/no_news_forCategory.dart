import 'package:flutter/material.dart';

class NoNewsForThisCategoryViews extends StatelessWidget {
  const NoNewsForThisCategoryViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: MediaQuery.sizeOf(context).width * 0.25,
            image: const AssetImage(
              'images/search_icon.gif',
            ),
          ),
          SizedBox(
            width: 200,
            child: Text(
              'No News For Now For This Category',
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
