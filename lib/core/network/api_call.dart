import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiCall {
  final Map<String, String> _defaultHeaders = {
    "Accept": "application/json",
    "Content-Type": "application/json",
  };

  /// POST Request
  Future<http.Response> postResponse(
    String api,
    Map<String, dynamic> bodyParameter,
  ) async {
    final uri = Uri.parse(api);
    final response = await http.post(
      uri,
      headers: _defaultHeaders,
      body: jsonEncode(bodyParameter),
    );
    // _handleResponse(response);
    
    return response;
  }

  /// GET Request
  Future<http.Response> getResponse(
    String api, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final uri = Uri.parse(api).replace(queryParameters: queryParameters);
    final response = await http.get(
      uri,
      headers: _defaultHeaders,
    );
    // _handleResponse(response);
    return response;
  }

  /// PUT Request
  Future<http.Response> putResponse(
    String api,
    Map<String, dynamic> bodyParameter, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final uri = Uri.parse(api).replace(queryParameters: queryParameters);
    final response = await http.put(
      uri,
      headers: _defaultHeaders,
      body: jsonEncode(bodyParameter),
    );
    _handleResponse(response);
    return response;
  }

  /// DELETE Request
  Future<http.Response> deleteResponse(
    String api, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? bodyParameter,
  }) async {
    final uri = Uri.parse(api).replace(queryParameters: queryParameters);
    final request = http.Request("DELETE", uri);
    request.headers.addAll(_defaultHeaders);

    if (bodyParameter != null) {
      request.body = jsonEncode(bodyParameter);
    }

    final response = await http.Client().send(request);
    final httpResponse = await http.Response.fromStream(response);
    _handleResponse(httpResponse);
    return httpResponse;
  }

  /// Helper to handle response and errors
  void _handleResponse(http.Response response) {
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw Exception('Error: ${response.statusCode}, Body: ${response.body}');
    }
  }
}
