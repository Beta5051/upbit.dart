# upbit_dart
![Pub Version](https://img.shields.io/pub/v/upbit_dart)

- [x] Quotation
- [ ] Exchange
- [x] WebSocket

# Example
## Quotation
```dart
import 'package:upbit_dart/src/upbit.dart';

void main() {
  UpBit().getMarkets().then((markets) {
    for (final market in markets) {
      if (market.market.contains('KRW')) {
        print('name: ${market.korean_name} code: ${market.market}');
      }
    }
  });
}
```

## WebSocket
```dart
import 'package:upbit_dart/upbit_dart.dart';

void main() {
  UpBitWebSocket((data) {
    if (data is WebSocketTicker) {
      print('price: ${data.trade_price}');
    }
  }, typeFields: const [
    TypeField(
      codes: ['KRW-DOGE'],
      isOnlyRealtime: true,
    ),
  ]);
}
```