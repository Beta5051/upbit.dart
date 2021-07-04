import 'dart:convert';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/io.dart';
import './api.dart';
import './model.dart';
import './exception.dart';

class UpBitWebSocket {
  static get ENDPOINT => API.ENDPOINT + '/websocket';
  static get VERSION => API.VERSION;

  final _conn = IOWebSocketChannel.connect('ws://$ENDPOINT/$VERSION', pingInterval: Duration(minutes: 1));

  bool _isConnected = true;
  bool get isConnected => _isConnected;
  bool get isClosed => !_isConnected;

  UpBitWebSocket(void Function(dynamic data) onData, {String? ticket, List<TypeField> typeFields = const [TypeField()]}) {
    _conn.stream.listen((event) {
      final data = utf8.decode(event);
      final Map<String, dynamic> jsonData = jsonDecode(data);
      if (jsonData.containsKey('error')) {
        throw UpBitException.fromMap(jsonData);
      }
      switch (jsonData['type']) {
        case 'ticker':
          onData(WebSocketTicker.fromMap(jsonData));
          break;
        case 'trade':
          onData(WebSocketTrade.fromMap(jsonData));
          break;
        case 'orderbook':
          onData(WebSocketOrderbook.fromMap(jsonData));
      }
    }, onDone: () => _isConnected = false);

    if (_isConnected) {
      if (ticket == null) {
        ticket = Uuid().v4();
      }
      List<Map<String, dynamic>> field = [{'ticket': ticket}];
      typeFields.forEach((element) => field.add(element.toMap()));
      final data = jsonEncode(field);
      _conn.sink.add(data);
    }
  }

  void close() {
    if (_isConnected) {
      _conn.sink.close();
    }
  }
}