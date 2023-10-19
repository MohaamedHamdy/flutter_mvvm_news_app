import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app2/features/home/data/models/news_model.dart';
import 'package:news_app2/features/home/data/repo/news_repo.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.newsRepo) : super(NewsInitial());

  final NewsRepo newsRepo;

  Future<void> fetchAllNews() async {
    var result = await newsRepo.fetchAllNews();
    emit(FetchNewsLoading());
    result.fold(
        (failure) =>
            emit(FetchNewsFailure(errorMessage: failure.failureMessage)),
        (news) => emit(FetchNewsSuccess(newsModel: news)));
  }
}
