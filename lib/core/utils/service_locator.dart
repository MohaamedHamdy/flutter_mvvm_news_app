import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app2/core/utils/api_service.dart';
import 'package:news_app2/features/home/data/repo/news_repo_implementation.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      dio: Dio(),
    ),
  );

  getIt.registerSingleton<NewsRepoImpl>(
    NewsRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
