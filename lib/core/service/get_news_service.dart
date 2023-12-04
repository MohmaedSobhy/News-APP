import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/core/helper/api.dart';
import 'package:news_app/Feature/home/data/model/news_model.dart';
import 'package:news_app/core/utils/constanstent.dart';

class GetNewsService {
  String url =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=${ConstantString.apiKey}";
  Future<List<NewsModel>> getAllNews() async {
    List<NewsModel> articles = [];
    http.Response response = await API().getMethod(url: url);
    dynamic data = jsonDecode(response.body);
    dynamic items = data['articles'];
    for (var item in items) {
      if (API().checkData(item)) {
        articles.add(NewsModel.formJson(item));
      }
    }
    return articles;
  }
}
