import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Feature/home/data/repository/home_repository_implmentation.dart';
import 'package:news_app/Feature/home/presentation/controller/populer_news_cubit/populer_news_status.dart';

class PopulerNewsCubit extends Cubit<PopulerNewsState> {
  PopulerNewsCubit() : super(InitialState());

  static PopulerNewsCubit get(context) {
    return BlocProvider.of(context);
  }

  void getAllNews() async {
    emit(FetchPopulerNewsLoading());
    var result =
        await HomeRepositoryImplmentation.getInstanse().fetchAllNewes();

    result.fold((error) {
      emit(FetchPopulerNewsFailed(errorMessage: error.errorMessage));
    }, (newsList) {
      emit(FetchPopulerNewsSucess(news: newsList));
    });
  }
}
