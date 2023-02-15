import 'dart:io';

import 'package:dio/dio.dart';

class ApiClient {
  ApiClient(String apiUrl) : _dio = _createDio(apiUrl);

  final Dio _dio;

  static Dio _createDio(String url) {
    final connectTimeout = 10000;
    final receiveTimeout = 10000;

    return Dio(
      BaseOptions(
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        baseUrl: url,
      ),
    );
  }

  Future<dynamic> get(String url, {Map<String, dynamic>? params}) {
    return _wrapApiRequest(_dio.get(url, queryParameters: params),
        endpoint: url);
  }

  Future<dynamic> post(String url, data, {Map<String, dynamic>? params}) {
    return _wrapApiRequest(_dio.post(url, data: data, queryParameters: params),
        endpoint: url);
  }

  Future<dynamic> _wrapApiRequest<T>(Future<Response<dynamic>> apiCall,
      {String? endpoint}) async {
    try {
      final Response response = await apiCall;
      return response.data;
    } on DioError catch (e) {
      print(e.toString());
    } on SocketException catch (e) {
      print(e.toString());
    }
  }
}
