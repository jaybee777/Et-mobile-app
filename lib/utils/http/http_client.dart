import 'dart:convert';

import 'package:http/http.dart' as http;

class EtHttpHelper {
  static const String _baseUrl = 'https://my-api-base-url.com';

  //helper method to make a GET response
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //helper method to make a POST response
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await http.post(Uri.parse('$_baseUrl/$endpoint'),
        headers: {'content-Type': 'application/json'}, body: json.encode(data));
    return _handleResponse(response);
  }

  //helper method to make a PUT response
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(Uri.parse('$_baseUrl/$endpoint'),
        headers: {'content-Type': 'application/json'}, body: json.encode(data));
    return _handleResponse(response);
  }

  //helper method to make a DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //helper method to handle response
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data:${response.statusCode}');
    }
  }
}
