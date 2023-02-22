import 'package:dio/dio.dart';

class DioManager {
  String timeStamp = DateTime.now().millisecondsSinceEpoch.toString();

  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://b1development.s3.eu-central-1.amazonaws.com/icibotV2',
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 5),
    ),
  );
}
