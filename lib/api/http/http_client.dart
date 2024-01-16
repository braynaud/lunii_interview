import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpClient {
  final String baseUrl;
  final String apiKey;

  HttpClient({
    required this.baseUrl,
    required this.apiKey,
  });

  Uri _buildUrl(String path) {
    return Uri.parse(
      "https://$baseUrl/?$path&apiKey=$apiKey",
    );
  }

  Future<dynamic> get(
    String path,
  ) async {
    try {
      final url = _buildUrl(path);
      final response = await http.get(url);

      if (response.statusCode != 200) {
        debugPrint("$url failed with error code ${response.statusCode}");
      }

      final data = jsonDecode(response.body);

      return data;
    } catch (e) {
      rethrow;
    }
  }
}
