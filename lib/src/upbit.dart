import './api.dart';
import './model.dart';

class UpBit extends API {
  UpBit([String? access_key, String? secret_key]) : super(access_key, secret_key);

  Future<List<Market>> getMarkets({bool? isDetails}) async {
    return (await super.call<List>(APIMethod.GET, 'market/all', data: {
      'isDetails': isDetails,
    })).map((e) => Market.fromMap(e)).toList();
  }

  Future<List<CandleMinute>> getCandlesMinutes({int unit = 1, String market = 'KRW-BTC', String? to, int? count}) async {
    return (await super.call<List>(APIMethod.GET, 'candles/minutes/$unit', data: {
      'market': market,
      'to': to,
      'count': count,
    })).map((e) => CandleMinute.fromMap(e)).toList();
  }
  
  Future<List<CandleDay>> getCandlesDays({String market = 'KRW-BTC', String? to, int? count, String? convertingPriceUnit}) async {
    return (await super.call<List>(APIMethod.GET, 'candles/days', data: {
      'market': market,
      'to': to,
      'count': count,
      'convertingPriceUnit': convertingPriceUnit,
    })).map((e) => CandleDay.fromMap(e)).toList();
  }

  Future<List<CandleWeek>> getCandlesWeeks({String market = 'KRW-BTC', String? to, int? count}) async {
    return (await super.call<List>(APIMethod.GET, 'candles/weeks', data: {
      'market': market,
      'to': to,
      'count': count,
    })).map((e) => CandleWeek.fromMap(e)).toList();
  }

  Future<List<CandleMonth>> getCandlesMonths({String market = 'KRW-BTC', String? to, int? count}) async {
    return (await super.call<List>(APIMethod.GET, 'candles/months', data: {
      'market': market,
      'to': to,
      'count': count,
    })).map((e) => CandleMonth.fromMap(e)).toList();
  }

  Future<List<Trade>> getTrades({String market = 'KRW-BTC', String? to, int? count, String? cursor, int? daysAgo}) async {
    return (await super.call<List>(APIMethod.GET, 'trades/ticks', data: {
      'market': market,
      'to': to,
      'count': count,
      'cursor': cursor,
      'daysAgo': daysAgo,
    })).map((e) => Trade.fromMap(e)).toList();
  }

  Future<List<Ticker>> getTickers({List<String> markets = const ['KRW-BTC']}) async {
    return (await super.call<List>(APIMethod.GET, 'ticker', data: {
      'markets': markets,
    })).map((e) => Ticker.fromMap(e)).toList();
  }

  Future<List<Orderbook>> getOrderbooks({List<String> markets = const ['KRW-BTC']}) async {
    return (await super.call<List>(APIMethod.GET, 'orderbook', data: {
      'markets': markets,
    })).map((e) => Orderbook.fromMap(e)).toList();
  }
}