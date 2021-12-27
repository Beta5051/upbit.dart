import 'package:crypto/crypto.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:uuid/uuid.dart';

String EnumToString(Enum enumObject) => enumObject.toString().split('.')[1];

T? StringToEnum<T extends Enum>(List<T> values, String s) {
  for (var i = 0; i < values.length; i++) {
    if (EnumToString(values[i]) == s) {
      return values[i];
    }
  }
}

String ListToString(List<dynamic> list) {
  String result = '';
  for (var i = 0; i < list.length; i++) {
    result += list[i].toString();
    if (i != list.length - 1) {
      result += ',';
    }
  }
  return result;
}

String GenerateToken(String access_key, String secret_key, String query) {
  final payload = {
    'access_key': access_key,
    'nonce': Uuid().v4(),
  };
  if (query.isNotEmpty) {
    payload['query_hash'] = sha512.convert(query.codeUnits).toString();
    payload['query_hash_alg'] = 'SHA512';
  }
  return JWT(payload).sign(SecretKey(secret_key));
}