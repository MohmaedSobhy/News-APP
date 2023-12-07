import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Feature/home/data/repository/home_repository_implmentation.dart';
import 'package:news_app/Feature/home/presentation/controller/populer_news_cubit/populer_news_status.dart';
import 'package:news_app/Feature/home/data/model/news_model.dart';

class NewCubit extends Cubit<NewsState> {
  List<NewsModel> articles = [];
  NewCubit() : super(InitialState());

  static NewCubit get(context) {
    return BlocProvider.of(context);
  }

  void getAllNews() async {
    emit(FetchNewsLoading());
    var result =
        await HomeRepositoryImplmentation.getInstanse().fetchAllNewes();

    result.fold((error) {
      emit(FetchNewsFailed(errorMessage: error.errorMessage));
    }, (news) {
      emit(FetchNewsSucess(news: news));
    });
  }
}
