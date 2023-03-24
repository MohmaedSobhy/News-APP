import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/cubit/news_status.dart';
import 'package:news_app/core/model/article_model.dart';
import 'package:news_app/core/service/get_news_by_category_service.dart';
import 'package:news_app/core/service/get_news_service.dart';

class NewCubit extends Cubit<NewsState> {
  List<ArticleModel> articles = [];
  NewCubit(super.initialState);

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
    if(articles.isEmpty){
      emit(FailedToGetNews());
      return;
    }
    emit(NewsUsingCategory());
  }

  void getAllNews() async {
    articles.clear();
    articles = await GetNewsService().getAllNews();
    if(articles.isEmpty){
      emit(FailedToGetNews());
      return;
    }
    emit(LoadNewsSuccessfull());
  }


}
