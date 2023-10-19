// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app2/features/home/data/models/news_model.dart';

import 'package:news_app2/features/home/data/repo/news_repo.dart';

part 'business_state.dart';

class BusinessCubit extends Cubit<BusinessState> {
  BusinessCubit(
    this.newsRepo,
  ) : super(BusinessInitial());
  final NewsRepo newsRepo;

  Future<void> fetchBusinessNews() async {
    var result = await newsRepo.fetchBusinessNews();
    emit(FetchBusinessLoading());
    result.fold(
        (failure) =>
            emit(FetchBusinessFailure(errorMessage: failure.failureMessage)),
        (news) => emit(FetchBusinessSuccess(newsModel: news)));
  }
}
