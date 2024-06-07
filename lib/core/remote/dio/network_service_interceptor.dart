import 'package:dio/dio.dart';

class NetworkServiceInterceptor extends Interceptor {
  NetworkServiceInterceptor();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Accept'] = 'application/json';
    // options.headers['Authorization'] = 'Bearer $accessToken';

    super.onRequest(options, handler);
  }
}
