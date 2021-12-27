import 'package:uuid/uuid.dart';

import './utils.dart';

part 'models/market.dart';
part 'models/candle.dart';
part 'models/trade.dart';
part 'models/ticker.dart';
part 'models/orderbook.dart';
part 'models/field.dart';

abstract class Model {
  dynamic toJson();

  String toString() => toJson().toString();
}

class WSModel with Model {
  final Type type;
  final String code;

  const WSModel({required this.type, required this.code});

  Map<String, dynamic> toJson() {
    return {
      'type': EnumToString(type).toLowerCase(),
      'code': code,
    };
  }
}