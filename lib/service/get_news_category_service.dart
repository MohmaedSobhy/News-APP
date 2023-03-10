import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/helper/api.dart';
import 'package:news_app/model/article_model.dart';

class GetNewsCategory {
  Future<List<ArticleModel>> getNewsCategory({required String category}) async {
    String URL =
        "https://newsapi.org/v2/top-headlines?country=us&category=${category}&apiKey=AddYourAPIKey";
    List<ArticleModel> articles = [];
    http.Response response = await API().getMethod(url: URL);
    dynamic data = jsonDecode(response.body);
    dynamic items = data['articles'];
    for (var item in items) {
      if (API().checkData(item)) {
        articles.add(ArticleModel.formJson(item));
      }
    }
    return articles;
  }
}
