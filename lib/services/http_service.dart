import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  Future getRequest(Uri url) async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to get data');
      }
    } on Exception {
      rethrow;
    }
  }
}
