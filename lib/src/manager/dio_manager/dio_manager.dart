
import 'package:dio/dio.dart';



@Deprecated('Use [DioManagerV2] instead')
class DioManager {
  String get timeStamp => DateTime.now().millisecondsSinceEpoch.toString();

  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://b1development.s3.eu-central-1.amazonaws.com/icibotV2',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      sendTimeout: const Duration(seconds: 5),
      responseType: ResponseType.json,
      method: 'GET',
    ),
  );
}

mixin DioManagerV2 {
  String get timeStamp => DateTime.now().millisecondsSinceEpoch.toString();

  final String url =
      'https://b1development.s3.eu-central-1.amazonaws.com/icibotV2';

  Dio dio(int appHotelId) => _createDio(appHotelId);

  Dio _createDio(int appHotelId) {
    var dio = Dio(
      BaseOptions(
        baseUrl: '$url/$appHotelId?$timeStamp',
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 5),
        responseType: ResponseType.json,
        method: 'GET',
      ),
    );

    dio.interceptors.addAll({
      DioManagerInterceptor(dio),
    });
    return dio;
  }
}

class DioManagerInterceptor extends Interceptor {
  final Dio dio;

  DioManagerInterceptor(this.dio);

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectionTimeout:
        throw NoInternetConnectionException(err.requestOptions);
      case DioErrorType.sendTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions);
          case 401:
            throw UnauthorizedException(err.requestOptions);
          case 403:
            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
          default:
            throw InternalServerErrorException(err.requestOptions);
        }
      case DioErrorType.cancel:
        throw NoInternetConnectionException(err.requestOptions);
      default:
        throw InternalServerErrorException(err.requestOptions);
    }
  }
}

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Invalid request';
  }
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Unknown error occurred, please try again later.';
  }
}

class ConflictException extends DioError {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Conflict occurred';
  }
}

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Access denied';
  }
}

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The requested information could not be found';
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'No internet connection detected, please try again.';
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection has timed out, please try again.';
  }
}
