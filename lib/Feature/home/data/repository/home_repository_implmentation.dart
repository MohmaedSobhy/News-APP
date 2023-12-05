import 'package:dartz/dartz.dart';
import 'package:news_app/Feature/home/data/model/news_model.dart';
import 'package:news_app/Feature/home/data/repository/home_repository.dart';
import 'package:news_app/core/errors/fauiler_class.dart';

class HomeRepositoryImplmentation implements HomeRepository {
  static HomeRepositoryImplmentation? homeImplementation;
  HomeRepositoryImplmentation._privateConstructor();

  static HomeRepositoryImplmentation getInstanse() {
    homeImplementation ??= HomeRepositoryImplmentation._privateConstructor();
    return homeImplementation!;
  }

  @override
  Future<Either<Failure, List<NewsModel>>> fetchAllNewes() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<NewsModel>>> fetchAllNewesByCategory(
      {required String category}) {
    throw UnimplementedError();
  }
}
