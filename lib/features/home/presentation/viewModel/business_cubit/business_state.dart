part of 'business_cubit.dart';

@immutable
sealed class BusinessState {}

final class BusinessInitial extends BusinessState {}

final class FetchBusinessSuccess extends BusinessState {
  final List<NewsModel> newsModel;

  FetchBusinessSuccess({required this.newsModel});
}

final class FetchBusinessLoading extends BusinessState {}

final class FetchBusinessFailure extends BusinessState {
  final String errorMessage;

  FetchBusinessFailure({required this.errorMessage});
}
