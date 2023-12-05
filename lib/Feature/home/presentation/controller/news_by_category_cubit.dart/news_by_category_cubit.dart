import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/Feature/home/data/model/news_model.dart';
import 'package:news_app/Feature/home/data/repository/home_repository_implmentation.dart';

part 'news_by_category_state.dart';

class NewsByCategoryCubit extends Cubit<NewsByCategoryState> {
  NewsByCategoryCubit() : super(NewsByCategoryInitial());

  void fetchNewsByCategory({required String category}) async {
    emit(FetchNewsByCategoryLoading());
    var result = await HomeRepositoryImplmentation.getInstanse()
        .fetchAllNewesByCategory(category: category);

    result.fold((error) {
      emit(FetchNewsByCategoryFailed(errorMessage: error.errorMessage));
    }, (news) {
      emit(FetchNewsByCategorySucess(news: news));
    });
  }
}
