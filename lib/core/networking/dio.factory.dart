// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.contentType = Headers.formUrlEncodedContentType
        ..options.headers.addAll({
          "Content-Type": "application/json",
          "content-type": "application/json",
          "Accept": "*/*",
        });
      addDioInterceptor();
    }
    return dio!;
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );
  }
}
