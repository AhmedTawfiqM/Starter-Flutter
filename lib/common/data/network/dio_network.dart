import 'package:dio/dio.dart';
import 'package:starterflutter/common/core/app_config.dart';
import 'interceptor.dart';

final appDio = AppDio().setup();

class AppDio {
  static final AppDio _instance = AppDio._privateConstructor();

  AppDio._privateConstructor();

  factory AppDio() {
    return _instance;
  }

  setup() {
    BaseOptions options = BaseOptions(
      baseUrl: AppConfig.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 60 * 1000,
      receiveTimeout: 60 * 1000,
    );

    var dio = Dio(options);
    dio.interceptors.add(LoggingInterceptor());

    return dio;
  }
}
