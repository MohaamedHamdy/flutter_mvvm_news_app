import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app2/features/home/data/models/news_model.dart';
import 'package:news_app2/features/home/data/repo/news_repo.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/api_service.dart';

class NewsRepoImpl implements NewsRepo {
  final ApiService apiService;

  NewsRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<NewsModel>>> fetchAllNews() async {
    try {
      var data = await apiService.fetchNews(category: '');
      List<NewsModel> newsModel = [];
      for (var item in data['articles']) {
        newsModel.add(NewsModel.fromJson(item));
      }
      return right(newsModel);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(failureMessage: error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NewsModel>>> fetchBusinessNews() async {
    try {
      var data = await apiService.fetchNews(category: 'Business');
      List<NewsModel> newsModel = [];
      for (var item in data['articles']) {
        newsModel.add(NewsModel.fromJson(item));
      }
      return right(newsModel);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(failureMessage: error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NewsModel>>> fetchHealthNews() async {
    try {
      var data = await apiService.fetchNews(category: 'Health');
      List<NewsModel> newsModel = [];
      for (var item in data['articles']) {
        newsModel.add(NewsModel.fromJson(item));
      }
      return right(newsModel);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(failureMessage: error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NewsModel>>> fetchPoliticsNews() async {
    try {
      var data = await apiService.fetchNews(category: 'politics');
      List<NewsModel> newsModel = [];
      for (var item in data['articles']) {
        newsModel.add(NewsModel.fromJson(item));
      }
      return right(newsModel);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(failureMessage: error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NewsModel>>> fetchScienceNews() async {
    try {
      var data = await apiService.fetchNews(category: 'Science');
      List<NewsModel> newsModel = [];
      for (var item in data['articles']) {
        newsModel.add(NewsModel.fromJson(item));
      }
      return right(newsModel);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(failureMessage: error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NewsModel>>> fetchSportsNews() async {
    try {
      var data = await apiService.fetchNews(category: 'sports');
      List<NewsModel> newsModel = [];
      for (var item in data['articles']) {
        newsModel.add(NewsModel.fromJson(item));
      }
      return right(newsModel);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(failureMessage: error.toString()));
    }
  }
}
