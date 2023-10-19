import 'package:dartz/dartz.dart';
import 'package:news_app2/core/errors/failure.dart';
import 'package:news_app2/features/home/data/models/news_model.dart';

abstract class NewsRepo {
  Future<Either<Failure, List<NewsModel>>> fetchAllNews();

  Future<Either<Failure, List<NewsModel>>> fetchSportsNews();

  Future<Either<Failure, List<NewsModel>>> fetchHealthNews();

  Future<Either<Failure, List<NewsModel>>> fetchPoliticsNews();

  Future<Either<Failure, List<NewsModel>>> fetchScienceNews();

  Future<Either<Failure, List<NewsModel>>> fetchTravelNews();

  Future<Either<Failure, List<NewsModel>>> fetchBusinessNews();
}
