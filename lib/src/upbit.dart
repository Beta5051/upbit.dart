import 'api/client.dart';
import 'websocket/client.dart';

class UpBit {
  final APIClient apiClient;
  late final WebSocketClient webSocket;

  String? get access_key => apiClient.access_key;
  void set access_key(String? value) => apiClient.access_key = value;

  String? get secret_key => apiClient.secret_key;
  void set secret_key(String? value) => apiClient.secret_key = value;

  UpBit({String? access_key, String? secret_key}): apiClient = APIClient(access_key: access_key, secret_key: secret_key);
}