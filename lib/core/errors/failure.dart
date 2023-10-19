import 'package:dio/dio.dart';

abstract class Failure {
  String failureMessage;

  Failure({required this.failureMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.failureMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(failureMessage: 'Connection Time out!');
      case DioExceptionType.sendTimeout:
        return ServerFailure(failureMessage: 'Send Time out!');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(failureMessage: 'Receive Time out!');
      case DioExceptionType.badCertificate:
        return ServerFailure(failureMessage: 'Bad certificate!');
      case DioExceptionType.badResponse:
        return ServerFailure(failureMessage: 'Bad Response!');
      case DioExceptionType.cancel:
        return ServerFailure(failureMessage: 'Cancel!');
      case DioExceptionType.connectionError:
        return ServerFailure(failureMessage: 'Connection Error!');
      case DioExceptionType.unknown:
        return ServerFailure(failureMessage: 'oops!');
      default:
        return ServerFailure(failureMessage: 'oops');
    }
  }
}
