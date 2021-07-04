class Market {
  final String market;
  final String korean_name;
  final String english_name;
  final String? market_warning;

  const Market(
      this.market,
      this.korean_name,
      this.english_name,
      this.market_warning,
      );

  factory Market.fromMap(Map<String, dynamic> map) {
    return Market(
      map['market'],
      map['korean_name'],
      map['english_name'],
      map['market_warning'],
    );
  }

  Map<String, dynamic> toMap() {
    var map = {
      'market': market,
      'korean_name': korean_name,
      'english_name': english_name,
    };
    if (market_warning != null) {
      map['market_warning'] = market_warning!;
    }
    return map;
  }

  @override
  String toString() => toMap().toString();
}

class CandleMinute {
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
  final int unit;

  const CandleMinute(
      this.market,
      this.candle_date_time_utc,
      this.candle_date_time_kst,
      this.opening_price,
      this.high_price,
      this.low_price,
      this.trade_price,
      this.timestamp,
      this.candle_acc_trade_price,
      this.candle_acc_trade_volume,
      this.unit,
      );

  factory CandleMinute.fromMap(Map<String, dynamic> map) {
    return CandleMinute(
      map['market'],
      map['candle_date_time_utc'],
      map['candle_date_time_kst'],
      map['opening_price'],
      map['high_price'],
      map['low_price'],
      map['trade_price'],
      map['timestamp'],
      map['candle_acc_trade_price'],
      map['candle_acc_trade_volume'],
      map['unit'],
    );
  }

  Map<String, dynamic> toMap() {
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
      'unit': unit
    };
  }

  @override
  String toString() => toMap().toString();
}

class CandleDay {
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
  final double prev_closing_price;
  final double change_price;
  final double change_rate;
  final double? converted_trade_price;

  const CandleDay(
      this.market,
      this.candle_date_time_utc,
      this.candle_date_time_kst,
      this.opening_price,
      this.high_price,
      this.low_price,
      this.trade_price,
      this.timestamp,
      this.candle_acc_trade_price,
      this.candle_acc_trade_volume,
      this.prev_closing_price,
      this.change_price,
      this.change_rate,
      this.converted_trade_price,
      );

  factory CandleDay.fromMap(Map<String, dynamic> map) {
    return CandleDay(
      map['market'],
      map['candle_date_time_utc'],
      map['candle_date_time_kst'],
      map['opening_price'],
      map['high_price'],
      map['low_price'],
      map['trade_price'],
      map['timestamp'],
      map['candle_acc_trade_price'],
      map['candle_acc_trade_volume'],
      map['prev_closing_price'],
      map['change_price'],
      map['change_rate'],
      map['converted_trade_price'],
    );
  }

  Map<String, dynamic> toMap() {
    var map = {
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
      map['converted_trade_price'] = converted_trade_price!;
    }
    return map;
  }

  @override
  String toString() => toMap().toString();
}

class CandleWeek {
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
  final String first_day_of_period;

  const CandleWeek(
      this.market,
      this.candle_date_time_utc,
      this.candle_date_time_kst,
      this.opening_price,
      this.high_price,
      this.low_price,
      this.trade_price,
      this.timestamp,
      this.candle_acc_trade_price,
      this.candle_acc_trade_volume,
      this.first_day_of_period,
      );

  factory CandleWeek.fromMap(Map<String, dynamic> map) {
    return CandleWeek(
      map['market'],
      map['candle_date_time_utc'],
      map['candle_date_time_kst'],
      map['opening_price'],
      map['high_price'],
      map['low_price'],
      map['trade_price'],
      map['timestamp'],
      map['candle_acc_trade_price'],
      map['candle_acc_trade_volume'],
      map['first_day_of_period'],
    );
  }

  Map<String, dynamic> toMap() {
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

  @override
  String toString() => toMap().toString();
}

class CandleMonth {
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
  final String first_day_of_period;

  const CandleMonth(
      this.market,
      this.candle_date_time_utc,
      this.candle_date_time_kst,
      this.opening_price,
      this.high_price,
      this.low_price,
      this.trade_price,
      this.timestamp,
      this.candle_acc_trade_price,
      this.candle_acc_trade_volume,
      this.first_day_of_period,
      );

  factory CandleMonth.fromMap(Map<String, dynamic> map) {
    return CandleMonth(
      map['market'],
      map['candle_date_time_utc'],
      map['candle_date_time_kst'],
      map['opening_price'],
      map['high_price'],
      map['low_price'],
      map['trade_price'],
      map['timestamp'],
      map['candle_acc_trade_price'],
      map['candle_acc_trade_volume'],
      map['first_day_of_period'],
    );
  }

  Map<String, dynamic> toMap() {
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

  @override
  String toString() => toMap().toString();
}

class Trade {
  final String trade_date_utc;
  final String trade_time_utc;
  final int timestamp;
  final double trade_price;
  final double trade_volume;
  final double prev_closing_price;
  final double change_price;
  final String ask_bid;
  final int sequential_id;

  const Trade(
      this.trade_date_utc,
      this.trade_time_utc,
      this.timestamp,
      this.trade_price,
      this.trade_volume,
      this.prev_closing_price,
      this.change_price,
      this.ask_bid,
      this.sequential_id,
      );

  factory Trade.fromMap(Map<String, dynamic> map) {
    return Trade(
      map['trade_date_utc'],
      map['trade_time_utc'],
      map['timestamp'],
      map['trade_price'],
      map['trade_volume'],
      map['prev_closing_price'],
      map['change_price'],
      map['ask_bid'],
      map['sequential_id'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'trade_date_utc': trade_date_utc,
      'trade_time_utc': trade_date_utc,
      'timestamp': timestamp,
      'trade_price': trade_price,
      'trade_volume': trade_volume,
      'prev_closing_price': prev_closing_price,
      'change_price': change_price,
      'asK_bid': ask_bid,
      'sequential_id': sequential_id,
    };
  }

  @override
  String toString() => toMap().toString();
}

class Ticker {
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
  final String change;
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

  const Ticker(
      this.market,
      this.trade_date,
      this.trade_time,
      this.trade_date_kst,
      this.trade_time_kst,
      this.opening_price,
      this.high_price,
      this.low_price,
      this.trade_price,
      this.prev_closing_price,
      this.change,
      this.change_price,
      this.change_rate,
      this.signed_change_price,
      this.signed_change_rate,
      this.trade_volume,
      this.acc_trade_price,
      this.acc_trade_price_24h,
      this.acc_trade_volume,
      this.acc_trade_volume_24h,
      this.highest_52_week_price,
      this.highest_52_week_date,
      this.lowest_52_week_price,
      this.lowest_52_week_date,
      this.timestamp,
      );
  
  factory Ticker.fromMap(Map<String, dynamic> map) {
    return Ticker(
      map['market'],
      map['trade_date'],
      map['trade_time'],
      map['trade_date_kst'],
      map['trade_time_kst'],
      map['opening_price'],
      map['high_price'],
      map['low_price'],
      map['trade_price'],
      map['prev_closing_price'],
      map['change'],
      map['change_price'],
      map['change_rate'],
      map['signed_change_price'],
      map['signed_change_rate'],
      map['trade_volume'],
      map['acc_trade_price'],
      map['acc_trade_price_24h'],
      map['acc_trade_volume'],
      map['acc_trade_volume_24h'],
      map['highest_52_week_price'],
      map['highest_52_week_date'],
      map['lowest_52_week_price'],
      map['lowest_52_week_date'],
      map['timestamp'],
    );
  }

  Map<String, dynamic> toMap() {
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
      'change': change,
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

  @override
  String toString() => toMap().toString();
}

class Orderbook {
  final String market;
  final int timestamp;
  final double total_ask_size;
  final double total_bid_size;
  final List<OrderbookUnit> orderbook_units;

  const Orderbook(
      this.market,
      this.timestamp,
      this.total_ask_size,
      this.total_bid_size,
      this.orderbook_units,
      );

  factory Orderbook.fromMap(Map<String, dynamic> map) {
    return Orderbook(
      map['market'],
      map['timestamp'],
      map['total_ask_size'],
      map['total_bid_size'],
      (map['orderbook_units'] as List).map((e) => OrderbookUnit.fromMap(e)).toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'market': market,
      'timestamp': timestamp,
      'total_ask_size': total_ask_size,
      'total_bid_size': total_bid_size,
      'orderbook_units': orderbook_units.map((e) => e.toMap()).toList(),
    };
  }

  @override
  String toString() => toMap().toString();
}

class OrderbookUnit {
  final double ask_price;
  final double bid_price;
  final double ask_size;
  final double bid_size;

  const OrderbookUnit(
      this.ask_price,
      this.bid_price,
      this.ask_size,
      this.bid_size,
      );

  factory OrderbookUnit.fromMap(Map<String, dynamic> map) {
    return OrderbookUnit(
      map['ask_price'],
      map['bid_price'],
      map['ask_size'],
      map['bid_size'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ask_price': ask_price,
      'bid_price': bid_price,
      'ask_size': ask_size,
      'bid_size': bid_size,
    };
  }

  @override
  String toString() => toMap().toString();
}

class TypeField {
  final String type;
  final List<String> codes;
  final bool? isOnlySnapshot;
  final bool? isOnlyRealtime;

  const TypeField({this.type = 'ticker', this.codes = const ['KRW-BTC'], this.isOnlySnapshot, this.isOnlyRealtime});

  factory TypeField.fromMap(Map<String, dynamic> map) {
    return TypeField(
      type: map['type'],
      codes: map['codes'],
      isOnlySnapshot: map['isOnlySnapshot'],
      isOnlyRealtime: map['isOnlyRealtime'],
    );
  }

  Map<String, dynamic> toMap() {
    var map = {
      'type': type,
      'codes': codes,
    };
    if (isOnlySnapshot != null) {
      map['isOnlySnapshot'] = isOnlySnapshot!;
    }
    if (isOnlyRealtime != null) {
      map['isOnlyRealtime'] = isOnlyRealtime!;
    }
    return map;
  }

  @override
  String toString() => toMap().toString();
}

class WebSocketTicker {
  final String type;
  final String code;
  final double opening_price;
  final double high_price;
  final double low_price;
  final double trade_price;
  final double prev_closing_price;
  final String change;
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
  final String ask_bid;
  final double acc_ask_volume;
  final double acc_bid_volume;
  final double highest_52_week_price;
  final String highest_52_week_date;
  final double lowest_52_week_price;
  final String lowest_52_week_date;
  final String? trade_status;
  final String market_state;
  final String? market_state_for_ios;
  final bool is_trading_suspended;
  final String? delisting_date;
  final String market_warning;
  final int timestamp;
  final String stream_type;

  const WebSocketTicker(
      this.type,
      this.code,
      this.opening_price,
      this.high_price,
      this.low_price,
      this.trade_price,
      this.prev_closing_price,
      this.change,
      this.change_price,
      this.signed_change_price,
      this.change_rate,
      this.signed_change_rate,
      this.trade_volume,
      this.acc_trade_volume,
      this.acc_trade_volume_24h,
      this.acc_trade_price,
      this.acc_trade_price_24h,
      this.trade_date,
      this.trade_time,
      this.trade_timestamp,
      this.ask_bid,
      this.acc_ask_volume,
      this.acc_bid_volume,
      this.highest_52_week_price,
      this.highest_52_week_date,
      this.lowest_52_week_price,
      this.lowest_52_week_date,
      this.trade_status,
      this.market_state,
      this.market_state_for_ios,
      this.is_trading_suspended,
      this.delisting_date,
      this.market_warning,
      this.timestamp,
      this.stream_type,
      );

  factory WebSocketTicker.fromMap(Map<String, dynamic> map) {
    return WebSocketTicker(
      map['type'],
      map['code'],
      map['opening_price'],
      map['high_price'],
      map['low_price'],
      map['trade_price'],
      map['prev_closing_price'],
      map['change'],
      map['change_price'],
      map['signed_change_price'],
      map['change_rate'],
      map['signed_change_rate'],
      map['trade_volume'],
      map['acc_trade_volume'],
      map['acc_trade_volume_24h'],
      map['acc_trade_price'],
      map['acc_trade_price_24h'],
      map['trade_date'],
      map['trade_time'],
      map['trade_timestamp'],
      map['ask_bid'],
      map['acc_ask_volume'],
      map['acc_bid_volume'],
      map['highest_52_week_price'],
      map['highest_52_week_date'],
      map['lowest_52_week_price'],
      map['lowest_52_week_date'],
      map['trade_status'],
      map['market_state'],
      map['market_state_for_ios'],
      map['is_trading_suspended'],
      map['delisting_date'],
      map['market_warning'],
      map['timestamp'],
      map['stream_type'],
    );
  }

  Map<String, dynamic> toMap() {
    var map = {
      'type': type,
      'code': code,
      'opening_price': opening_price,
      'high_price': high_price,
      'low_price': low_price,
      'trade_price': trade_price,
      'prev_closing_price': prev_closing_price,
      'change': change,
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
      'ask_bid': ask_bid,
      'acc_ask_volume': acc_ask_volume,
      'acc_bid_volume': acc_bid_volume,
      'highest_52_week_price': highest_52_week_price,
      'highest_52_week_date': highest_52_week_date,
      'lowest_52_week_price': lowest_52_week_price,
      'lowest_52_week_date': lowest_52_week_date,
      'market_state': market_state,
      'is_trading_suspended': is_trading_suspended,
      'market_warning': market_warning,
      'timestamp': timestamp,
      'stream_type': stream_type,
    };
    if (trade_status != null) {
      map['trade_status'] = trade_status!;
    }
    if (market_state_for_ios != null) {
      map['market_state_for_ios'] = market_state_for_ios!;
    }
    if (delisting_date != null) {
      map['delisting_date'] = delisting_date!;
    }
    return map;
  }

  @override
  String toString() => toMap().toString();
}

class WebSocketTrade {
  final String type;
  final String code;
  final double trade_price;
  final double trade_volume;
  final String ask_bid;
  final double prev_closing_price;
  final String change;
  final double change_price;
  final String trade_date;
  final String trade_time;
  final int trade_timestamp;
  final int timestamp;
  final int sequential_id;
  final String stream_type;

  const WebSocketTrade(
      this.type,
      this.code,
      this.trade_price,
      this.trade_volume,
      this.ask_bid,
      this.prev_closing_price,
      this.change,
      this.change_price,
      this.trade_date,
      this.trade_time,
      this.trade_timestamp,
      this.timestamp,
      this.sequential_id,
      this.stream_type,
      );

  factory WebSocketTrade.fromMap(Map<String, dynamic> map) {
    return WebSocketTrade(
      map['type'],
      map['code'],
      map['trade_price'],
      map['trade_volume'],
      map['ask_bid'],
      map['prev_closing_price'],
      map['change'],
      map['change_price'],
      map['trade_date'],
      map['trade_time'],
      map['trade_timestamp'],
      map['timestamp'],
      map['sequential_id'],
      map['stream_type'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'code': code,
      'trade_price': trade_price,
      'trade_volume': trade_volume,
      'ask_bid': ask_bid,
      'prev_closing_price': prev_closing_price,
      'change': change,
      'change_price': change_price,
      'trade_date': trade_date,
      'trade_time': trade_time,
      'trade_timestamp': trade_timestamp,
      'timestamp': timestamp,
      'sequential_id': sequential_id,
      'stream_type': stream_type,
    };
  }

  @override
  String toString() => toMap().toString();
}

class WebSocketOrderbook {
  final String type;
  final String code;
  final double total_ask_size;
  final double total_bid_size;
  final List<OrderbookUnit> orderbook_units;
  final int timestamp;
  final String stream_type;

  const WebSocketOrderbook(
      this.type,
      this.code,
      this.total_ask_size,
      this.total_bid_size,
      this.orderbook_units,
      this.timestamp,
      this.stream_type,
      );

  factory WebSocketOrderbook.fromMap(Map<String, dynamic> map) {
    return WebSocketOrderbook(
      map['type'],
      map['code'],
      map['total_ask_size'],
      map['total_bid_size'],
      (map['orderbook_units'] as List).map((e) => OrderbookUnit.fromMap(e)).toList(),
      map['timestamp'],
      map['stream_type'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'code': code,
      'total_ask_size': total_ask_size,
      'total_bid_size': total_bid_size,
      'orderbook_units': orderbook_units.map((e) => e.toMap()).toList(),
      'timestamp': timestamp,
      'stream_type': stream_type,
    };
  }

  @override
  String toString() => toMap().toString();
}