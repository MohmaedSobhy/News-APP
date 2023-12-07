import 'package:news_app/Feature/home/data/model/news_model.dart';

abstract class NewsState {}

class InitialState extends NewsState {}

class FetchNewsLoading extends NewsState {}

class FetchNewsSucess extends NewsState {
  final List<NewsModel> news;
  FetchNewsSucess({required this.news});
}

class FetchNewsFailed extends NewsState {
  final String errorMessage;

  FetchNewsFailed({required this.errorMessage});
}
