import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app2/features/home/data/models/news_model.dart';
import 'package:news_app2/features/home/data/repo/news_repo.dart';

part 'science_state.dart';

class ScienceCubit extends Cubit<ScienceState> {
  ScienceCubit(this.newsRepo) : super(ScienceInitial());
  final NewsRepo newsRepo;

  Future<void> fetchSceinceNews() async {
    var result = await newsRepo.fetchScienceNews();
    emit(FetchScienceLoading());
    result.fold(
        (failure) =>
            emit(FetchScienceFailure(errorMessage: failure.failureMessage)),
        (news) => emit(FetchScienceSuccess(newsModel: news)));
  }
}
