import 'dart:convert';
import 'package:http/http.dart' as http;
import './utils.dart';
import './exception.dart';

enum APIMethod { GET, POST, DELETE }

class API {
  static const ENDPOINT = 'api.upbit.com';
  static const VERSION = 'v1';

  final _client = http.Client();
  String? access_key;
  String? secret_key;

  API([this.access_key, this.secret_key]);

  Future<T> call<T>(APIMethod method, String path, {Map<String, dynamic>? data, bool token = false}) async {
    if (data != null && data.isNotEmpty) {
      data = DataConvert(data);
    }
    final uri = Uri.http(ENDPOINT, '$VERSION/$path', data);
    var request = http.Request(MethodToString(method), uri);

    if (token) {
      if (access_key == null) {
        throw UpBitException('access_key unknown', 'secret_key is null');
      }
      if (secret_key == null) {
        throw UpBitException('secret_key unknown', 'secret_key is null');
      }
      final token = GenerateToken(access_key!, secret_key!, uri.query);
      request.headers.addEntries([MapEntry('Authorization', 'Bearer $token')]);
    }

    final responseStream = await _client.send(request);
    final response = await http.Response.fromStream(responseStream);

    final jsonData = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw UpBitException.fromMap(jsonData);
    }
    return jsonData;
  }
}