import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:trackbudi_mobile/src/config/service/api/base_api.dart';
import '../../db/secure_storage.dart';
import '../../di/injector.dart';
import '../../keys/local_leys.dart';

class Api extends BaseApi {
  // dio instance
  static Dio? _dio;

  static _getInstance([bool enabledDioLogger = true]) async {
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
  get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final instance = await _getInstance();
    try {
      final Response response = await instance.get(
        apiUrl + url,
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
   post(
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
        apiUrl + uri,
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
  put(
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
        apiUrl + uri,
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
patch(
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
        apiUrl + uri,
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

download(String url, String savePath,
      {ProgressCallback? progressCallback}) async {
    final instance = await _getInstance();
    try {
      final Response response = await instance.download(
        apiUrl + url,
        savePath,
        onReceiveProgress: progressCallback,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Delete:--------------------------------------------------------------------
   delete(
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
        apiUrl + uri,
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
