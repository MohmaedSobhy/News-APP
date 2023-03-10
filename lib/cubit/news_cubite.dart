import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_status.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/service/get_news_category_service.dart';
import 'package:news_app/service/get_news_service.dart';

class NewCubit extends Cubit<NewsState> {
  List<ArticleModel> articles = [];
  NewCubit(super.initialState);

  static NewCubit get(context) {
    return BlocProvider.of(context);
  }

  void GetAllNewUsingCategory({required String category}) async {
    articles.clear();
    if (category == "General") {
      GetAllNews();
      return;
    }
    articles = await GetNewsCategory().getNewsCategory(category: category);
    emit(NewsUsingCategory());
  }
  void GetAllNews() async {
    articles.clear();
    articles = await GetNewsService().getAllNews();
    emit(LoadNewsSuccessfull());
  }
}
