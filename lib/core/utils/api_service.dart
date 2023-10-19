import 'package:dio/dio.dart';

class ApiService {
  Dio dio;
  final baseUrl = 'https://newsapi.org/v2/top-headlines?';
  final apiKey = '7750c7c52d564961988e41770456485a';
  ApiService({required this.dio});

  Future fetchNews({required String category})async{
    var response = await dio.get('$baseUrl&country=us&$category&$apiKey');
    return response.data;
  }
}
