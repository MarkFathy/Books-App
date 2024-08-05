import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with the API server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with the API server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with the API server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate error with the API server');
      case DioExceptionType.badResponse:
        return ServerFailure('Bad response from the API server');
      case DioExceptionType.cancel:
        return ServerFailure('Request to the API server was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with the API server');
      case DioExceptionType.unknown:
      default:
        return ServerFailure('An unknown error occurred');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return ServerFailure(
            response['error']['message'] ?? 'An error occurred');
      case 404:
        return ServerFailure('Request not found, please try again later!');
      case 500:
        return ServerFailure('Internal server error, please try again later!');
      default:
        return ServerFailure('An unexpected error occurred');
    }
  }
}
