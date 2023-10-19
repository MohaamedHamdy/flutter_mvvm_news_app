part of 'politics_cubit.dart';

@immutable
sealed class PoliticsState {}

final class PoliticsInitial extends PoliticsState {}

final class FetchPoliticsSuccess extends PoliticsState {
  final List<NewsModel> newsModel;

  FetchPoliticsSuccess({required this.newsModel});
}

final class FetchPoliticsLoading extends PoliticsState {}

final class FetchPoliticsFailure extends PoliticsState {
  final String errorMessage;

  FetchPoliticsFailure({required this.errorMessage});
}
