import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/data/model/news_model.dart';

class CustomePopulerNewsItem extends StatelessWidget {
  final NewsModel newsModel;
  final VoidCallback onPressed;
  const CustomePopulerNewsItem(
      {super.key, required this.newsModel, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.33,
              child: AspectRatio(
                aspectRatio: 5 / 4,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  child: Image(
                    fit: BoxFit.fill,
                    image: NetworkImage(newsModel.urlToImage),
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
                  Text(
                    newsModel.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "By ${newsModel.author}",
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "At:${newsModel.publshedAt.toString().substring(0, 10)}",
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.fade,
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
