import 'dart:convert';

import 'package:http/http.dart' as http;
import 'path.dart';
import '../utils.dart';
import '../exception.dart';

enum APIType { GET, POST, DELETE }

class APIClient {
  final _client = http.Client();

  String? access_key;
  String? secret_key;

  APIClient({this.access_key, this.secret_key});

  Future<T> call<T>({APIType type = APIType.GET, required String path, Map<String, dynamic>? data, bool useToken = false}) async {
    if (data != null && data.isNotEmpty) {
      data.removeWhere((_, value) => value == null);
      data.forEach((key, value) {
        if (value is List) {
          data[key] = ListToString(value);
        } else {
          data[key] = value.toString();
        }
      });
    }
    final uri = Uri.http(ENDPOINT, path, data);
    final request = http.Request(EnumToString(type), uri);

    if (useToken) {
      if (access_key == null) {
        throw APIException(name: 'UNKNOWN_KEY', message: 'access_key is null');
      }
      if (secret_key == null) {
        throw APIException(name: 'UNKNOWN_KEY', message: 'secret_key is null');
      }

      final token = GenerateToken(access_key!, secret_key!, uri.query);
      request.headers.addAll({'Authorization': 'Bearer $token'});
    }

    final responseStream = await _client.send(request);
    final response = await http.Response.fromStream(responseStream);

    final json = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw APIException.fromJson(json);
    }
    return json;
  }
}