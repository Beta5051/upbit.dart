import 'package:upbit/upbit.dart';
import 'package:upbit/websocket.dart';

void main() {
  final upbit = UpBit();

  upbit.connectWebSocket();

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