class APIException {
  final String name;
  final String message;

  APIException({required this.name, required this.message});

  factory APIException.fromJson(Map<String, dynamic> json) {
    return APIException(
      name: json['error']['name'].toString(),
      message: json['error']['message'],
    );
  }

  toString() => '[APIException] $name: $message';
}

class WebSocketException {
  final String name;
  final String message;

  WebSocketException({required this.name, required this.message});

  factory WebSocketException.fromJson(Map<String, dynamic> json) {
    return WebSocketException(
      name: json['error']['name'].toString(),
      message: json['error']['message'],
    );
  }

  toString() => '[WebSocketException] $name: $message';
}