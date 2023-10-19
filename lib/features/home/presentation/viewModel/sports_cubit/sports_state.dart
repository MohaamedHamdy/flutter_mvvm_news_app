part of 'sports_cubit.dart';

@immutable
sealed class SportsState {}

final class SportsInitial extends SportsState {}

final class FetchSportsSuccess extends SportsState {
  final List<NewsModel> newsModel;

  FetchSportsSuccess({required this.newsModel});
}

final class FetchSportsLoading extends SportsState {}

final class FetchSportsFailure extends SportsState {
  final String errorMessage;

  FetchSportsFailure({required this.errorMessage});
}
