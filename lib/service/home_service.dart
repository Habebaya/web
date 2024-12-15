import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:turn_digital_dashboard_test/const/constants.dart';

import '../const/api_response.dart';

class ApiService {

  ApiService();

  Future<ApiResponse?> fetchData() async {
    try {
      final response = await http.get(Uri.parse(Constants.baseUrl+Constants.getHomeContent));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        return ApiResponse.fromJson(jsonResponse); // Assuming ApiResponse is defined as before
      } else {
        print("Error: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      print("API call error: $e");
      return null;  // Return null or handle network exceptions here
    }
  }
}
