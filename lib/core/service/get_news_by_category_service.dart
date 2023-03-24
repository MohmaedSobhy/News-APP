import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/core/helper/api.dart';
import 'package:news_app/core/model/article_model.dart';

import '../../utils/constanstent.dart';

class GetNewsCategory {
  Future<List<ArticleModel>> getNewsCategory({required String category}) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=${ConstantString.apiKey}";
    List<ArticleModel> articles = [];
    http.Response response = await API().getMethod(url: url);
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
