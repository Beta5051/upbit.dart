import 'src/upbit.dart';
import 'src/websocket/client.dart';

extension WebSocket on UpBit {
  void connectWebSocket() => webSocket = WebSocketClient();
}