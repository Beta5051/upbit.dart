part of '../model.dart';

class Field with Model {
  final String ticket;
  final List<TypeField> typeFields;

  Field({String? ticket = null, required this.typeFields}): ticket = ticket != null ? ticket : Uuid().v4();

  List<Map<String, dynamic>> toJson() {
    final List<Map<String, dynamic>> json = [{'ticket': ticket}];
    typeFields.forEach((element) => json.add(element.toJson()));
    return json;
  }
}

enum Type { TICKER, TRADE, ORDERBOOK }

class TypeField with Model {
  final Type type;
  final List<String> codes;
  final bool? isOnlySnapshot;
  final bool? isOnlyRealtime;

  const TypeField({required this.type, required this.codes, this.isOnlySnapshot, this.isOnlyRealtime});

  Map<String, dynamic> toJson() {
    final json = {
      'type': EnumToString(type).toLowerCase(),
      'codes': codes,
    };
    if (isOnlyRealtime != null) {
      json['isOnlyRealtime'] = isOnlyRealtime!;
    }
    if (isOnlySnapshot != null) {
      json['isOnlySnapshot'] = isOnlySnapshot!;
    }
    return json;
  }
}