import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app/Feature/home/data/model/news_model.dart';
import 'package:news_app/Feature/home/data/repository/home_repository.dart';
import 'package:news_app/core/API/api_servies.dart';
import 'package:news_app/core/API/end_pointes.dart';
import 'package:news_app/core/errors/fauiler_class.dart';
import 'package:news_app/core/helper/check_article_data.dart';

class HomeRepositoryImplmentation implements HomeRepository {
  static HomeRepositoryImplmentation? homeImplementation;
  HomeRepositoryImplmentation._privateConstructor();

  static HomeRepositoryImplmentation getInstanse() {
    homeImplementation ??= HomeRepositoryImplmentation._privateConstructor();
    return homeImplementation!;
  }

  @override
  Future<Either<Failure, List<NewsModel>>> fetchAllNewes() async {
    try {
      List<NewsModel> news = [];
      var response = await ApiServices.getData(url: ApiEndPointes.allNews);
      var data = response.data;

      for (var item in data['articles']) {
        if (checkNewsData(item)) {
          news.add(NewsModel.formJson(item));
        }
      }

      return Right(news);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NewsModel>>> fetchAllNewesByCategory(
      {required String category}) async {
    try {
      List<NewsModel> news = [];
      var response = await ApiServices.getData(
          url: "${ApiEndPointes.allNewsByCategory}$category");
      var data = response.data;
      for (var item in data['articles']) {
        if (checkNewsData(item)) {
          news.add(NewsModel.formJson(item));
        }
      }
      return Right(news);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(error.toString()));
    }
  }
}
