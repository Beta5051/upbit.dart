import '../model.dart';
import 'client.dart';
import 'path.dart';

Future<List<Market>> getMarketsWithClient(APIClient client, {bool? isDetails}) async {
  return (await client.call<List>(path: GET_MARKETS_PATH, data: {'isDetails': isDetails})).map((e) => Market.fromJson(e)).toList();
}

Future<List<MinutesCandle>> getMinutesCandlesWithClient(APIClient client, {int minutes = 1, required String market, String? to, int? count}) async {
  return (await client.call<List>(path: GET_MINUTES_CANDLES_PATH(minutes), data: {'market': market, 'to': to, 'count': count})).map((e) => MinutesCandle.fromJson(e)).toList();
}

Future<List<DaysCandle>> getDaysCandlesWithClient(APIClient client, {required String market, String? to, int? count, String? convertingPriceUnit}) async {
  return (await client.call<List>(path: GET_DAYS_CANDLES_PATH, data: {'market': market, 'to': to, 'count': count, 'convertingPriceUnit': convertingPriceUnit})).map((e) => DaysCandle.fromJson(e)).toList();
}

Future<List<WeeksCandle>> getWeeksCandlesWithClient(APIClient client, {required String market, String? to, int? count}) async {
  return (await client.call<List>(path: GET_WEEKS_CANDLES_PATH, data: {'market': market, 'to': to, 'count': count})).map((e) => WeeksCandle.fromJson(e)).toList();
}

Future<List<MonthsCandle>> getMonthsCandlesWithClient(APIClient client, {required String market, String? to, int? count}) async {
  return (await client.call<List>(path: GET_MONTHS_CANDLES_PATH, data: {'market': market, 'to': to, 'count': count})).map((e) => MonthsCandle.fromJson(e)).toList();
}

Future<List<Trade>> getTradesWithClient(APIClient client, {required String market, String? to, int? count, String? cursor, String? daysAgo}) async {
  return (await client.call<List>(path: GET_TRADES_PATH, data: {'market': market, 'to': to, 'count': count, 'cursor': cursor, 'daysAgo': daysAgo})).map((e) => Trade.fromJson(e)).toList();
}

Future<List<Ticker>> getTickersWithClient(APIClient client, {required List<String> markets}) async {
  return (await client.call<List>(path: GET_TICKERS_PATH, data: {'markets': markets})).map((e) => Ticker.fromJson(e)).toList();
}

Future<List<OrderBook>> getOrderBooksWithClient(APIClient client, {required List<String> markets}) async {
  return (await client.call<List>(path: GET_ORDER_BOOKS_PATH, data: {'markets': markets})).map((e) => OrderBook.fromJson(e)).toList();
}