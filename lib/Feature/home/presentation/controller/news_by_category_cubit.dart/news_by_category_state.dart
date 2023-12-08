part of 'news_by_category_cubit.dart';

sealed class NewsByCategoryState {}

class NewsByCategoryInitial extends NewsByCategoryState {}

class FetchNewsByCategoryLoading extends NewsByCategoryState {}

class FetchNewsByCategorySucess extends NewsByCategoryState {
  final List<NewsModel> news;
  FetchNewsByCategorySucess({required this.news});
}

class FetchNewsByCategoryFailed extends NewsByCategoryState {
  final String errorMessage;
  FetchNewsByCategoryFailed({required this.errorMessage});
}
