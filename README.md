# upbit

- [x] Quotation
- [ ] Exchange
- [x] WebSocket

# Example
## Quotation
```dart
import 'package:upbit/upbit_dart.dart';
import 'package:upbit/quotation.dart';

void main() async {
  final upbit = UpBit();

  final markets = await upbit.getMarkets();

  markets.forEach((market) => print(market));
}
```

## WebSocket
```dart
import 'package:upbit/upbit_dart.dart';
import 'package:upbit/websocket.dart';

void main() {
  final upbit = UpBit();

  upbit.useWebSocket();

  upbit.webSocket.onData.listen((data) {
    print(data);
  }, onError: (error) async {
    print(error);
    await upbit.webSocket.close();
  });

  upbit.webSocket.requestData(Field(
    typeFields: [
      TypeField(
        type: Type.TICKER,
        codes: ['KRW-BTC'],
      ),
    ],
  ));
}
```