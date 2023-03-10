import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';

import 'package:sizer/sizer.dart';

class NewsCard extends StatelessWidget {
  final ArticleModel articleModel;
  VoidCallback function;
  NewsCard({super.key, required this.articleModel, required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: function,
        child: SizedBox(
          width: double.infinity,
          height: 30.h,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: CachedNetworkImage(
                    imageUrl: articleModel.urlToImage,
                    imageBuilder: (context, imageProvider) {
                      return Image(
                        image: imageProvider,
                        width: double.infinity,
                        height: 30.h,
                        fit: BoxFit.cover,
                      );
                    },
                    placeholder: (context, url) {
                      return Center(child: CircularProgressIndicator());
                    },
                    errorWidget: (context, url, error) =>
                        Center(child: const CircularProgressIndicator())),
              ),
              Positioned(
                child: Container(
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.5),
                  height: 10.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        articleModel.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 15.sp,
                        ),
                      ),
                      Text(
                        articleModel.author,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
