part of 'science_cubit.dart';

@immutable
sealed class ScienceState {}

final class ScienceInitial extends ScienceState {}

final class FetchScienceSuccess extends ScienceState {
  final List<NewsModel> newsModel;

  FetchScienceSuccess({required this.newsModel});
}

final class FetchScienceLoading extends ScienceState {}

final class FetchScienceFailure extends ScienceState {
  final String errorMessage;

  FetchScienceFailure({required this.errorMessage});
}
