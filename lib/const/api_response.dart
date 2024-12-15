import 'dart:convert';

import 'package:turn_digital_dashboard_test/home/models/home_model.dart';

class ApiResponse {
  final bool success;
  final String? error;
  final HomeModel? data;

  ApiResponse({
    required this.success,
    this.error,
    this.data,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      success: json['success'] ?? false,  // Default to false if success is not present
      error: json['error'], // Can be null or a string message
      data: json['data'] != null ? HomeModel.fromJson(json['data']) : null, // Parse data if it exists
    );
  }
}

