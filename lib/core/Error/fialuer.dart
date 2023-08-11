import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  const ServerFailure(super.errorMessage);
  factory ServerFailure.formDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.sendTimeout:
        return const ServerFailure("Send timeout with ApiServer");

      case DioExceptionType.connectionTimeout:
        return const ServerFailure("Connection timeout with ApiServer");

      case DioExceptionType.connectionError:
        return const ServerFailure("Connection error with ApiServer");

      case DioExceptionType.receiveTimeout:
        return const ServerFailure("Receive timeout with ApiServer");

      case DioExceptionType.cancel:
        return const ServerFailure('Request to ApiServer was canceld');

      case DioExceptionType.badResponse:
        return ServerFailure.formResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return const ServerFailure('No Internet Connection');
        }
        return const ServerFailure('Unexpected Error, Please try again!');
      case DioExceptionType.badCertificate:
        return const ServerFailure(
            "Bad Certificate error, please try again later.");
      default:
        return const ServerFailure(
            "Oops! Something went wrong , Please try again later.");
    }
  }

  factory ServerFailure.formResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return const ServerFailure("404 Not Found");
    } else if (statusCode == 500) {
      return const ServerFailure('Internal Server error, Please try later');
    } else {
      return const ServerFailure(
          "Oops! Something went wrong, Please try again later!");
    }
  }
}
