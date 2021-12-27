part of '../model.dart';

class OrderBook with Model {
  final String market;
  final int timestamp;
  final double total_ask_size;
  final double total_bid_size;
  final List<OrderBookUnit> orderbook_units;

  const OrderBook({
    required this.market,
    required this.timestamp,
    required this.total_ask_size,
    required this.total_bid_size,
    required this.orderbook_units,
  });

  factory OrderBook.fromJson(Map<String, dynamic> json) {
    return OrderBook(
      market: json['market'],
      timestamp: json['timestamp'],
      total_ask_size: json['total_ask_size'],
      total_bid_size: json['total_bid_size'],
      orderbook_units: (json['orderbook_units'] as List).map((e) => OrderBookUnit.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'market': market,
      'timestamp': timestamp,
      'total_ask_size': total_ask_size,
      'total_bid_size': total_bid_size,
      'orderbook_units': orderbook_units.map((e) => e.toJson()).toList(),
    };
  }
}

class OrderBookUnit with Model {
  final double ask_price;
  final double bid_price;
  final double ask_size;
  final double bid_size;

  const OrderBookUnit({
    required this.ask_price,
    required this.bid_price,
    required this.ask_size,
    required this.bid_size,
  });

  factory OrderBookUnit.fromJson(Map<String, dynamic> json) {
    return OrderBookUnit(
      ask_price: json['ask_price'],
      bid_price: json['bid_price'],
      ask_size: json['ask_size'],
      bid_size: json['bid_size'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ask_price': ask_price,
      'bid_price': bid_price,
      'ask_size': ask_size,
      'bid_size': bid_size,
    };
  }
}

class WSOrderBook extends WSModel {
  final double total_ask_size;
  final double total_bid_size;
  final List<OrderBookUnit> orderbook_units;
  final int timestamp;

  const WSOrderBook({
    required String code,
    required this.total_ask_size,
    required this.total_bid_size,
    required this.orderbook_units,
    required this.timestamp,
  }): super(type: Type.ORDERBOOK, code: code);

  factory WSOrderBook.fromJson(Map<String, dynamic> json) {
    return WSOrderBook(
      code: json['code'],
      total_ask_size: json['total_ask_size'],
      total_bid_size: json['total_bid_size'],
      orderbook_units: (json['orderbook_units'] as List).map((e) => OrderBookUnit.fromJson(e)).toList(),
      timestamp: json['timestamp'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': 'orderbook',
      'code': code,
      'total_ask_size': total_ask_size,
      'total_bid_size': total_bid_size,
      'orderbook_units': orderbook_units.map((e) => e.toJson()).toList(),
      'timestamp': timestamp,
    };
  }
}