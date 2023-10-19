import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app2/features/home/data/models/news_model.dart';
import 'package:news_app2/features/home/data/repo/news_repo.dart';

part 'sports_state.dart';

class SportsCubit extends Cubit<SportsState> {
  SportsCubit(this.newsRepo) : super(SportsInitial());
  final NewsRepo newsRepo;
  Future<void> fetchSportsNews() async {
    var result = await newsRepo.fetchSportsNews();

    emit(FetchSportsLoading());
    result.fold(
        (failure) =>
            emit(FetchSportsFailure(errorMessage: failure.failureMessage)),
        (news) {
      emit(FetchSportsSuccess(newsModel: news));
    });
  }
}
