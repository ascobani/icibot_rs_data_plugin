import 'package:dio/dio.dart';

class DioManager {
  String timeStamp = DateTime.now().millisecondsSinceEpoch.toString();

  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://b1development.s3.eu-central-1.amazonaws.com/icibotV2',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      method: 'GET',
    ),
  );
}
