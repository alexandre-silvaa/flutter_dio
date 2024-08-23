import 'package:dio/dio.dart';
import 'package:flutter_dio/api/interceptors/dio_interceptor.dart';

class DioClient {
  final Dio _dio = Dio();

  DioClient() {
    _dio
      ..options.baseUrl = 'https://rickandmortyapi.com/api'
      ..options.connectTimeout = const Duration(seconds: 10)
      ..options.receiveTimeout = const Duration(seconds: 10)
      ..interceptors.addAll([
        DioInterceptor(),
      ]);
  }

  Dio get dio => _dio;
}
