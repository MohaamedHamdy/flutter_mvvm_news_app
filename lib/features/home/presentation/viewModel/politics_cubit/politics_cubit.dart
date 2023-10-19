import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app2/features/home/data/models/news_model.dart';
import 'package:news_app2/features/home/data/repo/news_repo.dart';

part 'politics_state.dart';

class PoliticsCubit extends Cubit<PoliticsState> {
  PoliticsCubit(this.newsRepo) : super(PoliticsInitial());

  final NewsRepo newsRepo;

  Future<void> fetchPoliticsNews() async {
    var result = await newsRepo.fetchPoliticsNews();
    emit(FetchPoliticsLoading());
    result.fold(
        (failure) =>
            emit(FetchPoliticsFailure(errorMessage: failure.failureMessage)),
        (news) => emit(FetchPoliticsSuccess(newsModel: news)));
  }
}
