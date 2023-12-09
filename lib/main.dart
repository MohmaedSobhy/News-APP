import 'package:flutter/material.dart';
import 'package:news_app/core/API/api_servies.dart';
import 'package:news_app/core/helper/cache_helper.dart';
import 'package:news_app/news_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ApiServices.init();
  await CacheHelper.init();
  runApp(const MyApp());
}
