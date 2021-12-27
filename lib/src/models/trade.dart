part of '../model.dart';

enum AskBid { ASK, BID }

class Trade with Model {
  final String trade_date_utc;
  final String trade_time_utc;
  final int timestamp;
  final double trade_price;
  final double trade_volume;
  final double prev_closing_price;
  final double change_price;
  final AskBid ask_bid;
  final int sequential_id;

  const Trade({
    required this.trade_date_utc,
    required this.trade_time_utc,
    required this.timestamp,
    required this.trade_price,
    required this.trade_volume,
    required this.prev_closing_price,
    required this.change_price,
    required this.ask_bid,
    required this.sequential_id,
  });
  
  factory Trade.fromJson(Map<String, dynamic> json) {
    return Trade(
      trade_date_utc: json['trade_date_utc'],
      trade_time_utc: json['trade_time_utc'],
      timestamp: json['timestamp'],
      trade_price: json['trade_price'],
      trade_volume: json['trade_volume'],
      prev_closing_price: json['prev_closing_price'],
      change_price: json['change_price'],
      ask_bid: StringToEnum(AskBid.values, json['ask_bid'])!,
      sequential_id: json['sequential_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'trade_date_utc': trade_date_utc,
      'trade_time_utc': trade_time_utc,
      'timestamp': timestamp,
      'trade_price': trade_price,
      'trade_volume': trade_volume,
      'prev_closing_price': prev_closing_price,
      'change_price': change_price,
      'ask_bid': EnumToString(ask_bid),
      'sequential_id': sequential_id,
    };
  }
}

enum StreamType { SNAPSHOT, REALTIME }

class WSTrade extends WSModel {
  final double trade_price;
  final double trade_volume;
  final AskBid ask_bid;
  final double prev_closing_price;
  final Change change;
  final double change_price;
  final String trade_date;
  final String trade_time;
  final int trade_timestamp;
  final int timestamp;
  final int sequential_id;
  final StreamType stream_type;

  const WSTrade({
    required String code,
    required this.trade_price,
    required this.trade_volume,
    required this.ask_bid,
    required this.prev_closing_price,
    required this.change,
    required this.change_price,
    required this.trade_date,
    required this.trade_time,
    required this.trade_timestamp,
    required this.timestamp,
    required this.sequential_id,
    required this.stream_type,
  }): super(type: Type.TRADE, code: code);

  factory WSTrade.fromJson(Map<String, dynamic> json) {
    return WSTrade(
      code: json['code'],
      trade_price: json['trade_price'],
      trade_volume: json['trade_volume'],
      ask_bid: StringToEnum(AskBid.values, json['ask_bid'])!,
      prev_closing_price: json['prev_closing_price'],
      change: StringToEnum(Change.values, json['change'])!,
      change_price: json['change_price'],
      trade_date: json['trade_date'],
      trade_time: json['trade_time'],
      trade_timestamp: json['trade_timestamp'],
      timestamp: json['timestamp'],
      sequential_id: json['sequential_id'],
      stream_type: StringToEnum(StreamType.values, json['stream_type'])!,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': 'ticker',
      'code': code,
      'trade_price': trade_price,
      'trade_volume': trade_volume,
      'ask_bid': EnumToString(ask_bid),
      'prev_closing_price': prev_closing_price,
      'change': EnumToString(change),
      'change_price': change_price,
      'trade_date': trade_date,
      'trade_time': trade_time,
      'trade_timestamp': trade_timestamp,
      'timestamp': timestamp,
      'sequential_id': sequential_id,
      'stream_type': EnumToString(stream_type),
    };
  }
}