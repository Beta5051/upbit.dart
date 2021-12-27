part of '../model.dart';

class Candle with Model {
  final String market;
  final String candle_date_time_utc;
  final String candle_date_time_kst;
  final double opening_price;
  final double high_price;
  final double low_price;
  final double trade_price;
  final int timestamp;
  final double candle_acc_trade_price;
  final double candle_acc_trade_volume;

  const Candle({
    required this.market,
    required this.candle_date_time_utc,
    required this.candle_date_time_kst,
    required this.opening_price,
    required this.high_price,
    required this.low_price,
    required this.trade_price,
    required this.timestamp,
    required this.candle_acc_trade_price,
    required this.candle_acc_trade_volume,
  });

  factory Candle.fromJson(Map<String, dynamic> json) {
    return Candle(
      market: json['market'],
      candle_date_time_utc: json['candle_date_time_utc'],
      candle_date_time_kst: json['candle_date_time_kst'],
      opening_price: json['opening_price'],
      high_price: json['high_price'],
      low_price: json['low_price'],
      trade_price: json['trade_price'],
      timestamp: json['timestamp'],
      candle_acc_trade_price: json['candle_acc_trade_price'],
      candle_acc_trade_volume: json['candle_acc_trade_volume'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'market': market,
      'candle_date_time_utc': candle_date_time_utc,
      'candle_date_time_kst': candle_date_time_kst,
      'opening_price': opening_price,
      'high_price': high_price,
      'low_price': low_price,
      'trade_price': trade_price,
      'timestamp': timestamp,
      'candle_acc_trade_price': candle_acc_trade_price,
      'candle_acc_trade_volume': candle_acc_trade_volume,
    };
  }
}

class MinutesCandle extends Candle {
  final int unit;

  const MinutesCandle({
    required String market,
    required String candle_date_time_utc,
    required String candle_date_time_kst,
    required double opening_price,
    required double high_price,
    required double low_price,
    required double trade_price,
    required int timestamp,
    required double candle_acc_trade_price,
    required double candle_acc_trade_volume,
    required this.unit,
  }): super(
    market: market,
    candle_date_time_utc: candle_date_time_utc,
    candle_date_time_kst: candle_date_time_utc,
    opening_price: opening_price,
    high_price: high_price,
    low_price: low_price,
    trade_price: trade_price,
    timestamp: timestamp,
    candle_acc_trade_price: candle_acc_trade_price,
    candle_acc_trade_volume: candle_acc_trade_volume,
  );

  factory MinutesCandle.fromJson(Map<String, dynamic> json) {
    return MinutesCandle(
      market: json['market'],
      candle_date_time_utc: json['candle_date_time_utc'],
      candle_date_time_kst: json['candle_date_time_kst'],
      opening_price: json['opening_price'],
      high_price: json['high_price'],
      low_price: json['low_price'],
      trade_price: json['trade_price'],
      timestamp: json['timestamp'],
      candle_acc_trade_price: json['candle_acc_trade_price'],
      candle_acc_trade_volume: json['candle_acc_trade_volume'],
      unit: json['unit'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'market': market,
      'candle_date_time_utc': candle_date_time_utc,
      'candle_date_time_kst': candle_date_time_kst,
      'opening_price': opening_price,
      'high_price': high_price,
      'low_price': low_price,
      'trade_price': trade_price,
      'timestamp': timestamp,
      'candle_acc_trade_price': candle_acc_trade_price,
      'candle_acc_trade_volume': candle_acc_trade_volume,
      'unit': unit,
    };
  }
}

class DaysCandle extends Candle {
  final double prev_closing_price;
  final double change_price;
  final double change_rate;
  final double? converted_trade_price;

  const DaysCandle({
    required String market,
    required String candle_date_time_utc,
    required String candle_date_time_kst,
    required double opening_price,
    required double high_price,
    required double low_price,
    required double trade_price,
    required int timestamp,
    required double candle_acc_trade_price,
    required double candle_acc_trade_volume,
    required this.prev_closing_price,
    required this.change_price,
    required this.change_rate,
    this.converted_trade_price,
  }): super(
    market: market,
    candle_date_time_utc: candle_date_time_utc,
    candle_date_time_kst: candle_date_time_utc,
    opening_price: opening_price,
    high_price: high_price,
    low_price: low_price,
    trade_price: trade_price,
    timestamp: timestamp,
    candle_acc_trade_price: candle_acc_trade_price,
    candle_acc_trade_volume: candle_acc_trade_volume,
  );

  factory DaysCandle.fromJson(Map<String, dynamic> json) {
    return DaysCandle(
      market: json['market'],
      candle_date_time_utc: json['candle_date_time_utc'],
      candle_date_time_kst: json['candle_date_time_kst'],
      opening_price: json['opening_price'],
      high_price: json['high_price'],
      low_price: json['low_price'],
      trade_price: json['trade_price'],
      timestamp: json['timestamp'],
      candle_acc_trade_price: json['candle_acc_trade_price'],
      candle_acc_trade_volume: json['candle_acc_trade_volume'],
      prev_closing_price: json['prev_closing_price'],
      change_price: json['change_price'],
      change_rate: json['change_rate'],
      converted_trade_price: json['converted_trade_price'],
    );
  }

  Map<String, dynamic> toJson() {
    final json = {
      'market': market,
      'candle_date_time_utc': candle_date_time_utc,
      'candle_date_time_kst': candle_date_time_kst,
      'opening_price': opening_price,
      'high_price': high_price,
      'low_price': low_price,
      'trade_price': trade_price,
      'timestamp': timestamp,
      'candle_acc_trade_price': candle_acc_trade_price,
      'candle_acc_trade_volume': candle_acc_trade_volume,
      'prev_closing_price': prev_closing_price,
      'change_price': change_price,
      'change_rate': change_rate,
    };
    if (converted_trade_price != null) {
      json['converted_trade_price'] = converted_trade_price!;
    }
    return json;
  }
}

class WeeksCandle extends Candle {
  final String first_day_of_period;

  const WeeksCandle({
    required String market,
    required String candle_date_time_utc,
    required String candle_date_time_kst,
    required double opening_price,
    required double high_price,
    required double low_price,
    required double trade_price,
    required int timestamp,
    required double candle_acc_trade_price,
    required double candle_acc_trade_volume,
    required this.first_day_of_period,
  }): super(
    market: market,
    candle_date_time_utc: candle_date_time_utc,
    candle_date_time_kst: candle_date_time_utc,
    opening_price: opening_price,
    high_price: high_price,
    low_price: low_price,
    trade_price: trade_price,
    timestamp: timestamp,
    candle_acc_trade_price: candle_acc_trade_price,
    candle_acc_trade_volume: candle_acc_trade_volume,
  );

  factory WeeksCandle.fromJson(Map<String, dynamic> json) {
    return WeeksCandle(
      market: json['market'],
      candle_date_time_utc: json['candle_date_time_utc'],
      candle_date_time_kst: json['candle_date_time_kst'],
      opening_price: json['opening_price'],
      high_price: json['high_price'],
      low_price: json['low_price'],
      trade_price: json['trade_price'],
      timestamp: json['timestamp'],
      candle_acc_trade_price: json['candle_acc_trade_price'],
      candle_acc_trade_volume: json['candle_acc_trade_volume'],
      first_day_of_period: json['first_day_of_period'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'market': market,
      'candle_date_time_utc': candle_date_time_utc,
      'candle_date_time_kst': candle_date_time_kst,
      'opening_price': opening_price,
      'high_price': high_price,
      'low_price': low_price,
      'trade_price': trade_price,
      'timestamp': timestamp,
      'candle_acc_trade_price': candle_acc_trade_price,
      'candle_acc_trade_volume': candle_acc_trade_volume,
      'first_day_of_period': first_day_of_period,
    };
  }
}

class MonthsCandle extends Candle {
  final String first_day_of_period;

  const MonthsCandle({
    required String market,
    required String candle_date_time_utc,
    required String candle_date_time_kst,
    required double opening_price,
    required double high_price,
    required double low_price,
    required double trade_price,
    required int timestamp,
    required double candle_acc_trade_price,
    required double candle_acc_trade_volume,
    required this.first_day_of_period,
  }): super(
    market: market,
    candle_date_time_utc: candle_date_time_utc,
    candle_date_time_kst: candle_date_time_utc,
    opening_price: opening_price,
    high_price: high_price,
    low_price: low_price,
    trade_price: trade_price,
    timestamp: timestamp,
    candle_acc_trade_price: candle_acc_trade_price,
    candle_acc_trade_volume: candle_acc_trade_volume,
  );

  factory MonthsCandle.fromJson(Map<String, dynamic> json) {
    return MonthsCandle(
      market: json['market'],
      candle_date_time_utc: json['candle_date_time_utc'],
      candle_date_time_kst: json['candle_date_time_kst'],
      opening_price: json['opening_price'],
      high_price: json['high_price'],
      low_price: json['low_price'],
      trade_price: json['trade_price'],
      timestamp: json['timestamp'],
      candle_acc_trade_price: json['candle_acc_trade_price'],
      candle_acc_trade_volume: json['candle_acc_trade_volume'],
      first_day_of_period: json['first_day_of_period'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'market': market,
      'candle_date_time_utc': candle_date_time_utc,
      'candle_date_time_kst': candle_date_time_kst,
      'opening_price': opening_price,
      'high_price': high_price,
      'low_price': low_price,
      'trade_price': trade_price,
      'timestamp': timestamp,
      'candle_acc_trade_price': candle_acc_trade_price,
      'candle_acc_trade_volume': candle_acc_trade_volume,
      'first_day_of_period': first_day_of_period,
    };
  }
}