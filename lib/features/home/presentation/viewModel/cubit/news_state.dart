part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class FetchNewsSuccess extends NewsState {
  final List<NewsModel> newsModel;

  FetchNewsSuccess({required this.newsModel});
}

final class FetchNewsLoading extends NewsState {}

final class FetchNewsFailure extends NewsState {
  final String errorMessage;

  FetchNewsFailure({required this.errorMessage});
}
