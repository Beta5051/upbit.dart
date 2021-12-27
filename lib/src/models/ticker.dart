part of '../model.dart';

enum Change {
  EVEN,
  RISE,
  FALL,
}

class Ticker with Model {
  final String market;
  final String trade_date;
  final String trade_time;
  final String trade_date_kst;
  final String trade_time_kst;
  final double opening_price;
  final double high_price;
  final double low_price;
  final double trade_price;
  final double prev_closing_price;
  final Change change;
  final double change_price;
  final double change_rate;
  final double signed_change_price;
  final double signed_change_rate;
  final double trade_volume;
  final double acc_trade_price;
  final double acc_trade_price_24h;
  final double acc_trade_volume;
  final double acc_trade_volume_24h;
  final double highest_52_week_price;
  final String highest_52_week_date;
  final double lowest_52_week_price;
  final String lowest_52_week_date;
  final int timestamp;

  const Ticker({
    required this.market,
    required this.trade_date,
    required this.trade_time,
    required this.trade_date_kst,
    required this.trade_time_kst,
    required this.opening_price,
    required this.high_price,
    required this.low_price,
    required this.trade_price,
    required this.prev_closing_price,
    required this.change,
    required this.change_price,
    required this.change_rate,
    required this.signed_change_price,
    required this.signed_change_rate,
    required this.trade_volume,
    required this.acc_trade_price,
    required this.acc_trade_price_24h,
    required this.acc_trade_volume,
    required this.acc_trade_volume_24h,
    required this.highest_52_week_price,
    required this.highest_52_week_date,
    required this.lowest_52_week_price,
    required this.lowest_52_week_date,
    required this.timestamp,
  });

  factory Ticker.fromJson(Map<String, dynamic> json) {
    return Ticker(
      market: json['market'],
      trade_date: json['trade_date'],
      trade_time: json['trade_time'],
      trade_date_kst: json['trade_date_kst'],
      trade_time_kst: json['trade_time_kst'],
      opening_price: json['opening_price'],
      high_price: json['high_price'],
      low_price: json['low_price'],
      trade_price: json['trade_price'],
      prev_closing_price: json['prev_closing_price'],
      change: StringToEnum(Change.values, json['change'])!,
      change_price: json['change_price'],
      change_rate: json['change_rate'],
      signed_change_price: json['signed_change_price'],
      signed_change_rate: json['signed_change_rate'],
      trade_volume: json['trade_volume'],
      acc_trade_price: json['acc_trade_price'],
      acc_trade_price_24h: json['acc_trade_price_24h'],
      acc_trade_volume: json['acc_trade_volume'],
      acc_trade_volume_24h: json['acc_trade_volume_24h'],
      highest_52_week_price: json['highest_52_week_price'],
      highest_52_week_date: json['highest_52_week_date'],
      lowest_52_week_price: json['lowest_52_week_price'],
      lowest_52_week_date: json['lowest_52_week_date'],
      timestamp: json['timestamp'],
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'market': market,
      'trade_date': trade_date,
      'trade_time': trade_time,
      'trade_date_kst': trade_date_kst,
      'trade_time_kst': trade_time_kst,
      'opening_price': opening_price,
      'high_price': high_price,
      'low_price': low_price,
      'trade_price': trade_price,
      'prev_closing_price': prev_closing_price,
      'change': EnumToString(change),
      'change_price': change_price,
      'change_rate': change_rate,
      'signed_change_price': signed_change_price,
      'signed_change_rate': signed_change_rate,
      'trade_volume': trade_volume,
      'acc_trade_price': acc_trade_price,
      'acc_trade_price_24h': acc_trade_price_24h,
      'acc_trade_volume': acc_trade_volume,
      'acc_trade_volume_24h': acc_trade_volume_24h,
      'highest_52_week_price': highest_52_week_price,
      'highest_52_week_date': highest_52_week_date,
      'lowest_52_week_price': lowest_52_week_price,
      'lowest_52_week_date': lowest_52_week_date,
      'timestamp': timestamp
    };
  }
}

enum MarketState { PREVIEW, ACTIVE, DELISTED }

class WSTicker extends WSModel {
  final double opening_price;
  final double high_price;
  final double low_price;
  final double trade_price;
  final double prev_closing_price;
  final Change change;
  final double change_price;
  final double signed_change_price;
  final double change_rate;
  final double signed_change_rate;
  final double trade_volume;
  final double acc_trade_volume;
  final double acc_trade_volume_24h;
  final double acc_trade_price;
  final double acc_trade_price_24h;
  final String trade_date;
  final String trade_time;
  final int trade_timestamp;
  final AskBid ask_bid;
  final double acc_ask_volume;
  final double acc_bid_volume;
  final double highest_52_week_price;
  final String highest_52_week_date;
  final double lowest_52_week_price;
  final String lowest_52_week_date;
  final MarketState market_state;
  final bool is_trading_suspended;
  final DateTime? delisting_date;
  final MarketWarning market_warning;
  final int timestamp;
  final StreamType stream_type;

  const WSTicker({
    required String code,
    required this.opening_price,
    required this.high_price,
    required this.low_price,
    required this.trade_price,
    required this.prev_closing_price,
    required this.change,
    required this.change_price,
    required this.signed_change_price,
    required this.change_rate,
    required this.signed_change_rate,
    required this.trade_volume,
    required this.acc_trade_volume,
    required this.acc_trade_volume_24h,
    required this.acc_trade_price,
    required this.acc_trade_price_24h,
    required this.trade_date,
    required this.trade_time,
    required this.trade_timestamp,
    required this.ask_bid,
    required this.acc_ask_volume,
    required this.acc_bid_volume,
    required this.highest_52_week_price,
    required this.highest_52_week_date,
    required this.lowest_52_week_price,
    required this.lowest_52_week_date,
    required this.market_state,
    required this.is_trading_suspended,
    this.delisting_date,
    required this.market_warning,
    required this.timestamp,
    required this.stream_type,
  }): super(type: Type.TICKER, code: code);

  factory WSTicker.fromJson(Map<String, dynamic> json) {
    return WSTicker(
      code: json['code'],
      opening_price: json['opening_price'],
      high_price: json['high_price'],
      low_price: json['low_price'],
      trade_price: json['trade_price'],
      prev_closing_price: json['prev_closing_price'],
      change: StringToEnum(Change.values, json['change'])!,
      change_price: json['change_price'],
      signed_change_price: json['signed_change_price'],
      change_rate: json['change_rate'],
      signed_change_rate: json['signed_change_price'],
      trade_volume: json['trade_volume'],
      acc_trade_volume: json['acc_trade_volume'],
      acc_trade_volume_24h: json['acc_trade_volume_24h'],
      acc_trade_price: json['acc_trade_price'],
      acc_trade_price_24h: json['acc_trade_price_24h'],
      trade_date: json['trade_date'],
      trade_time: json['trade_time'],
      trade_timestamp: json['trade_timestamp'],
      ask_bid: StringToEnum(AskBid.values, json['ask_bid'])!,
      acc_ask_volume: json['acc_ask_volume'],
      acc_bid_volume: json['acc_bid_volume'],
      highest_52_week_price: json['highest_52_week_price'],
      highest_52_week_date: json['highest_52_week_date'],
      lowest_52_week_price: json['lowest_52_week_price'],
      lowest_52_week_date: json['lowest_52_week_date'],
      market_state: StringToEnum(MarketState.values, json['market_state'])!,
      is_trading_suspended: json['is_trading_suspended'],
      delisting_date: json['delisting_date'],
      market_warning: StringToEnum(MarketWarning.values, json['market_warning'])!,
      timestamp: json['timestamp'],
      stream_type: StringToEnum(StreamType.values, json['stream_type'])!,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': 'ticker',
      'code': code,
      'opening_price': opening_price,
      'high_price': high_price,
      'low_price': low_price,
      'trade_price': trade_price,
      'prev_closing_price': prev_closing_price,
      'change': EnumToString(change),
      'change_price': change_price,
      'signed_change_price': signed_change_price,
      'change_rate': change_rate,
      'signed_change_rate': signed_change_rate,
      'trade_volume': trade_volume,
      'acc_trade_volume': acc_trade_volume,
      'acc_trade_volume_24h': acc_trade_volume_24h,
      'acc_trade_price': acc_trade_price,
      'acc_trade_price_24h': acc_trade_price_24h,
      'trade_date': trade_date,
      'trade_time': trade_time,
      'trade_timestamp': trade_timestamp,
      'ask_bid': EnumToString(ask_bid),
      'acc_ask_volume': acc_ask_volume,
      'acc_bid_volume': acc_bid_volume,
      'highest_52_week_price': highest_52_week_price,
      'highest_52_week_date': highest_52_week_date,
      'lowest_52_week_price': lowest_52_week_price,
      'lowest_52_week_date': lowest_52_week_date,
      'market_state': EnumToString(market_state),
      'is_trading_suspended': is_trading_suspended,
      'delisting_date': delisting_date,
      'market_warning': EnumToString(market_warning),
      'timestamp': timestamp,
      'stream_type': EnumToString(stream_type),
    };
  }
}