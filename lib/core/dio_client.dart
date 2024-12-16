import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioClient {
  final Dio _dio;

  DioClient(this._dio);

  // Configure Dio instance (you can add interceptors, base URL, headers, etc.)
  factory DioClient.create() {
    Dio dio = Dio();
    dio.options.baseUrl = 'http://api.td-dev.turndigital.net/api/';
    dio.options.connectTimeout = Duration(seconds: 5000); // 5 seconds
    dio.options.receiveTimeout =  Duration(seconds: 3000); // 3 seconds

    // Add any global interceptors (logging, error handling)
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        debugPrint("Request: ${options.uri}");
        return handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint("Response: ${response.data}");
        return handler.next(response);
      },
      onError: (DioError e, handler) {
        debugPrint("Error: ${e.message}");
        return handler.next(e);
      },
    ));

    return DioClient(dio);
  }

  // General method to handle GET requests
  Future<Response<T>> get<T>(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get<T>(endpoint, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  // General method to handle POST requests
  Future<Response<T>> post<T>(String endpoint, {dynamic data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.post<T>(endpoint, data: data, queryParameters: queryParameters);
      return response;
    } on DioError catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  // General method to handle PUT requests
  Future<Response<T>> put<T>(String endpoint, {dynamic data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.put<T>(endpoint, data: data, queryParameters: queryParameters);
      return response;
    } on DioError catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  // General method to handle DELETE requests
  Future<Response<T>> delete<T>(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.delete<T>(endpoint, queryParameters: queryParameters);
      return response;
    } on DioError catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  // Handle API errors globally
  void _handleError(DioError error) {
    if (error.type == DioExceptionType.connectionTimeout) {
      throw Exception('Connection Timeout');
    } else if (error.type == DioExceptionType.receiveTimeout) {
      throw Exception('Receive Timeout');
    } else if (error.type == DioExceptionType.badResponse) {
      // Handle API response errors (4xx, 5xx)
      throw Exception('Failed request: ${error.response?.statusCode}');
    } else if (error.type == DioExceptionType.cancel) {
      throw Exception('Request was cancelled');
    } else {
      throw Exception('Unexpected error occurred');
    }
  }

  // Helper method to parse response
  T parseResponse<T>(Response response) {
    if (response.statusCode == 200) {
      return response.data ?? (throw Exception("Empty response"));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
