import 'package:upbit/upbit_dart.dart';
import 'package:upbit/quotation.dart';

void main() async {
  final upbit = UpBit();

  final markets = await upbit.getMarkets();

  markets.forEach((market) => print(market));
}