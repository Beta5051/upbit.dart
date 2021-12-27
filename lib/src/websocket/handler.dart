import 'dart:async';
import 'dart:convert';

import '../model.dart';
import '../exception.dart';

class WebSocketHandler {
  final StreamController<WSModel> controller = StreamController.broadcast();

  void handle(dynamic data) {
    final dataStr = utf8.decode(data);
    final Map<String, dynamic> json = jsonDecode(dataStr);
    if (json.containsKey('error')) {
      controller.sink.addError(WebSocketException.fromJson(json));
    } else {
      switch (json['type']) {
        case 'ticker':
          controller.sink.add(WSTicker.fromJson(json));
          break;
        case 'trade':
          controller.sink.add(WSTrade.fromJson(json));
          break;
        case 'orderbook':
          controller.sink.add(WSOrderBook.fromJson(json));
      }
    }
  }
}