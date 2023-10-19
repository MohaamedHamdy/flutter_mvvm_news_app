// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:news_app2/features/home/data/models/news_model.dart';
import 'package:news_app2/features/home/data/repo/news_repo.dart';

part 'health_state.dart';

class HealthCubit extends Cubit<HealthState> {
  HealthCubit(
    this.newsRepo,
  ) : super(HealthInitial());
  final NewsRepo newsRepo;

  Future<void> fetchHealthNews() async {
    var result = await newsRepo.fetchHealthNews();
    emit(HealthNewsLoading());
    result.fold(
        (failure) =>
            emit(HealthNewsFailure(errorMessage: failure.failureMessage)),
        (news) => emit(HealthNewsSuccess(newsModel: news)));
  }
}
