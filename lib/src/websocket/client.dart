import 'dart:async';

import 'package:web_socket_channel/io.dart';
import 'handler.dart';
import '../api/path.dart';
import '../model.dart';

class WebSocketClient {
  final IOWebSocketChannel _ws = IOWebSocketChannel.connect(Uri.parse('wss://${ENDPOINT+WEBSOCKET_PATH}'), pingInterval: Duration(minutes: 1));
  final WebSocketHandler _handler = WebSocketHandler();

  Stream<WSModel> get onData => _handler.controller.stream;

  WebSocketClient() {
    _ws.stream.listen((data) => _handler.handle(data));
  }

  void requestData(Field field) => _ws.sink.add(field.toString());

  Future<void> close() => _ws.sink.close();
}