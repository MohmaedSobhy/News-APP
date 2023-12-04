import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Feature/home/presentation/controller/news_status.dart';
import 'package:news_app/Feature/home/data/model/news_model.dart';
import 'package:news_app/core/service/get_news_by_category_service.dart';
import 'package:news_app/core/service/get_news_service.dart';

class NewCubit extends Cubit<NewsState> {
  List<NewsModel> articles = [];
  NewCubit() : super(InitialState());

  static NewCubit get(context) {
    return BlocProvider.of(context);
  }

  void getAllNewUsingCategory({required String category}) async {
    articles.clear();
    if (category == "General") {
      getAllNews();
      return;
    }
    articles = await GetNewsCategory().getNewsCategory(category: category);
    if (articles.isEmpty) {
      emit(FetchNewsFailed());
      return;
    }
    emit(NewsUsingCategory());
  }

  void getAllNews() async {
    articles.clear();
    articles = await GetNewsService().getAllNews();
    if (articles.isEmpty) {
      emit(FetchNewsFailed());
      return;
    }
    emit(FetchNewsSucess());
  }
}
