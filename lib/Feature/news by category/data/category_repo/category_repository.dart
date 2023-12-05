import 'package:dartz/dartz.dart';
import 'package:news_app/Feature/home/data/model/news_model.dart';
import 'package:news_app/core/errors/fauiler_class.dart';

abstract class CategoryRepository {
  Future<Either<Failure, NewsModel>> fetchNewsByCategory();
}