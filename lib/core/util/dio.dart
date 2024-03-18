// Package imports:
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/core/util/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  final Dio dio = Dio(BaseOptions(
    connectTimeout: const Duration(milliseconds: 5000),
    receiveTimeout: const Duration(milliseconds: 5000),
  ));
  dio.interceptors.add(CustomInterceptor(ref: ref));
  return dio;
}

class CustomInterceptor extends Interceptor {
  final Ref ref;

  CustomInterceptor({required this.ref});

  // api 요청 보낼때
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    logger.d('[REQUEST] ${options.method}] ${options.uri}');

    return super.onRequest(options, handler);
  }

  // api 응답 받을때
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d(
        '[RESPONSE] ${response.requestOptions.method}] ${response.requestOptions.uri} StatusCode:${response.statusCode} ${response.data}');
    return super.onResponse(response, handler);
  }

  // api 통신 중 에러 발생했을때
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    logger.e(
        '[ERROR] ${err.requestOptions.method}] ${err.requestOptions.uri}  StatusCode:${err.response?.statusCode}, ${err.message}, ${err.type}');

    if (err.type == DioExceptionType.connectionError) {
      logger.e('Connection Error');
      return handler.reject(err);
    }
  }
}
