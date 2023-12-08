import 'package:news_app/Feature/home/data/model/news_model.dart';

abstract class PopulerNewsState {}

class InitialState extends PopulerNewsState {}

class FetchPopulerNewsLoading extends PopulerNewsState {}

class FetchPopulerNewsSucess extends PopulerNewsState {
  final List<NewsModel> news;
  FetchPopulerNewsSucess({required this.news});
}

class FetchPopulerNewsFailed extends PopulerNewsState {
  final String errorMessage;

  FetchPopulerNewsFailed({required this.errorMessage});
}
