import 'package:flutter/material.dart';

import 'populer_news_list_view.dart';

class PopulerNewView extends StatelessWidget {
  const PopulerNewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Populer News",
              style: Theme.of(context).textTheme.displayMedium),
          const SizedBox(
            height: 10,
          ),
          const NewsListView(),
        ],
      ),
    );
  }
}
