import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:trackbudi_mobile/src/config/keys/app_keys.dart';
import 'package:trackbudi_mobile/src/config/service/api/api_response.dart';
import 'package:trackbudi_mobile/src/config/service/storage/local_storage.dart';

import '../../../core/shared/resources/toast_r.dart';
import '../../keys/end_points.dart';
import '../locator/locator.dart';

void _handleDioError(ApiResponse response) {
  // showToast(response.message!);
  ToastResp.toastMsgError(resp: response.message);
  inspect(response.title);
}

class ApiClient {
  static final _dio = Dio(
    BaseOptions(baseUrl: Endpoints.baseURL),
  );

  static final _defaultHeader = {
    'Content-Type': 'application/json',
  };
  static String get _token => _getToken();
  static Future delete(
    String endpoint, {
    required Map<String, dynamic> body,
    bool useToken = true,
  }) async {
    final result = await _makeRequest(
      () async {
        final header = _defaultHeader;

        if (useToken) {
          header.addAll(
            {'Authorization': 'Bearer $_token'},
          );
        }

        final options = Options(headers: header);
        debugPrint('Making PUT request $body to $endpoint');

        final response =
            await _dio.delete(endpoint, data: body, options: options);
        debugPrint('Response from $endpoint \n${response.data}');
        return response;
      },
    );

    return result;
  }

  static Future get(
    String endpoint, {
    dynamic queryParameters,
    bool useToken = true,
  }) async {
    final result = await _makeRequest(
      () async {
        final header = _defaultHeader;
        log('this is the token$_token');
        if (useToken) {
          header.addAll(
            {'Authorization': 'Bearer $_token'},
          );
        }

        final options = Options(headers: header);
        log('${_dio.options.baseUrl}/$endpoint');

        final response = await _dio.get(endpoint,
            queryParameters: queryParameters, options: options);
        return response.data;
      },
    );
    return result;
  }

  static Future patch(
    String endpoint, {
    required dynamic body,
    bool useToken = true,
  }) async {
    final result = await _makeRequest(
      () async {
        final header = _defaultHeader;

        final options = Options(headers: header);
        log('put request');
        // ignore: prefer_single_quotes
        log("${_dio.options.baseUrl}$endpoint $body");

        final response =
            await _dio.patch(endpoint, data: body, options: options);
        debugPrint('Response from $endpoint \n${response.data}');
        return response.data;
      },
    );

    return result;
  }

  static Future post(
    String endpoint, {
    required dynamic body,
    bool useToken = true,
  }) async {
    final result = await _makeRequest(
      () async {
        final header = _defaultHeader;

        if (useToken) {
          header.addAll(
            {'Authorization': 'Bearer $_token'},
          );
        }

        final options = Options(headers: header);
        log("${_dio.options.baseUrl}$endpoint $body");

        final response =
            await _dio.post(endpoint, data: body, options: options);

        return response.data;
      },
    );

    return result;
  }

  static Future put(
    String endpoint, {
    required dynamic body,
    bool useToken = true,
  }) async {
    final result = await _makeRequest(
      () async {
        final header = _defaultHeader;
        final options = Options(headers: header);
        log('put request');
        log("${_dio.options.baseUrl}$endpoint $body");
        final response = await _dio.put(endpoint, data: body, options: options);
        debugPrint('Response from $endpoint \n${response.data}');
        return response.data;
      },
    );

    return result;
  }

  static String _getToken() {
    String token =
        locator<LocalStorageService>().getDataFromDisk(AppKeys.token);
    print('from $token');
    return json.decode(token);
  }

  static void _handleSocketException(SocketException e) {
    debugPrint('Check Internet');
  }

  /// [Handlers]

  static Future _makeRequest(Function request) async {
    try {
      final result = await request();
      log(result.toString());

      return SuccessResponse.toApiResponse(result);
    } on DioError catch (e) {
      log(e.response.toString());
      if (e.response?.statusCode == 401) {
        // router.push(AppRoutes.login);
      }
      log(e.toString());
      log(e.response!.toString());
      _handleDioError(ApiResponse.toApiResponse(
          e.response?.data ?? e.response?.statusMessage));

      return ApiResponse.toApiResponse(e.response!.data);
    } on SocketException catch (e) {
      _handleSocketException(e);
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }
}
