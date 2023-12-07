import 'package:flutter/material.dart';
import 'package:news_app/core/API/api_servies.dart';
import 'package:news_app/news_app.dart';

void main() {
  ApiServices.init();
  runApp(const MyApp());
}
