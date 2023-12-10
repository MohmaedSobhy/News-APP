import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/data/model/news_model.dart';
import 'package:news_app/core/widgets/cricle_loading_indicator.dart';

// ignore: must_be_immutable
class NewsCategoryCard extends StatelessWidget {
  final NewsModel articleModel;
  VoidCallback function;
  NewsCategoryCard(
      {super.key, required this.articleModel, required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: function,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                  imageUrl: articleModel.urlToImage,
                  imageBuilder: (context, imageProvider) {
                    return Image(
                      image: imageProvider,
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.28,
                      fit: BoxFit.cover,
                    );
                  },
                  placeholder: (context, url) {
                    return SizedBox(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.28,
                      child: const CustomeCircleLoading(),
                    );
                  },
                  errorWidget: (context, url, error) {
                    return SizedBox(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.28,
                      child: const CustomeCircleLoading(),
                    );
                  }),
            ),
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      articleModel.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      articleModel.author,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
