import 'dart:developer';

import 'package:dio/dio.dart';
import '../../db/secure_storage.dart';
import '../../di/injector.dart';
import '../../keys/local_leys.dart';

class Api {
  // dio instance
  static Dio? _dio;

  static Future<Dio> _getInstance([bool enabledDioLogger = true]) async {
    final SecureStore secureStore = si<SecureStore>();

    String? storageToken = await secureStore.getString(PrefKeys.AUTH_TOKEN);

    log('token-: $storageToken');

    _dio ??= Dio();

    Map<String, dynamic> headers = {};
    headers['Content-Type'] = 'application/json';
    if (storageToken != 'null') {
      headers['Authorization'] = 'Bearer $storageToken';
    }

    _dio?.options.headers = headers;
    _dio?.options.responseType = ResponseType.json;

    if (enabledDioLogger) {
      _dio?.interceptors.addAll({
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      });
    }
    return _dio!;
  }

  // Get:-----------------------------------------------------------------------
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final instance = await _getInstance();
    try {
      final Response response = await instance.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Response> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final instance = await _getInstance();
    try {
      final response = await instance.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Put:-----------------------------------------------------------------------
  Future<Response> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final instance = await _getInstance();
    try {
      final Response response = await instance.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Patch:-----------------------------------------------------------------------
  Future<Response> patch(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final instance = await _getInstance();
    try {
      final Response response = await instance.patch(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Download:-----------------------------------------------------------------------

  Future<Response> download(String url, String savePath,
      {ProgressCallback? progressCallback}) async {
    final instance = await _getInstance();
    try {
      final Response response = await instance.download(
        url,
        savePath,
        onReceiveProgress: progressCallback,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<dynamic> delete(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final instance = await _getInstance();
    try {
      final Response response = await instance.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
