import 'package:dio/dio.dart';

class DioClient {
  late final dio;
  final String baseUrl = 'https://api.github.com/users/';
  final Duration maxTimeOut = const Duration(minutes: 1);

  DioClient() {
    dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: maxTimeOut,
        receiveTimeout: maxTimeOut));
  }
}
