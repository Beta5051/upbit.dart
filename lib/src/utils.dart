import 'package:uuid/uuid.dart';
import 'package:crypto/crypto.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import './api.dart';

String MethodToString(APIMethod method) => method.toString().substring(method.toString().indexOf('.') + 1);

Map<String, dynamic> DataConvert(Map<String, dynamic> data) {
  data.removeWhere((key, value) => value == null);
  data.forEach((key, value) {
    if (value is List) {
      data[key] = ListToString(value);
    } else if (value is! String) {
      data[key] = value.toString();
    }
  });
  return data;
}

String ListToString(List<dynamic> list) {
  String s = '';
  for (var i = 0; i < list.length; i++) {
    if (list[i] is String) {
      s += list[i];
    } else {
      s += list[i].toString();
    }
    if (i != list.length - 1) {
      s += ',';
    }
  }
  return s;
}

String GenerateToken(String accessKey, String secretKey, String query) {
  var payload = {
    'access_key': accessKey,
    'nonce': Uuid().v4(),
  };
  if (query.isNotEmpty) {
    payload['query_hash'] = sha512.convert(query.codeUnits).toString();
    payload['query_hash_alg'] = 'SHA512';
  }
  return issueJwtHS256(JwtClaim(otherClaims: payload), secretKey);
}