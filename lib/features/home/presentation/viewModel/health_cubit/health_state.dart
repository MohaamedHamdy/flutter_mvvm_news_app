part of 'health_cubit.dart';

@immutable
sealed class HealthState {}

final class HealthInitial extends HealthState {}

final class HealthNewsSuccess extends HealthState {
  final List<NewsModel> newsModel;

  HealthNewsSuccess({required this.newsModel});
}

final class HealthNewsLoading extends HealthState {}

final class HealthNewsFailure extends HealthState {
  final String errorMessage;

  HealthNewsFailure({required this.errorMessage});
}
