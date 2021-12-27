import 'src/upbit.dart';
import 'src/websocket/client.dart';

extension WebSocket on UpBit {
  void useWebSocket() => webSocket = WebSocketClient();
}