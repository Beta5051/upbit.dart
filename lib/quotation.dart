import 'src/upbit.dart';
import 'src/model.dart';
import 'src/api/quotation.dart';

extension Quotation on UpBit {
  Future<List<Market>> getMarkets({bool? isDetails}) {
    return getMarketsWithClient(apiClient, isDetails: isDetails);
  }

  Future<List<MinutesCandle>> getMinutesCandles({int minutes = 1, required String market, String? to, int? count}) {
    return getMinutesCandlesWithClient(apiClient, minutes: minutes, market: market, to: to, count: count);
  }

  Future<List<DaysCandle>> getDaysCandles({required String market, String? to, int? count, String? convertingPriceUnit}) {
    return getDaysCandlesWithClient(apiClient, market: market, to: to, count: count, convertingPriceUnit: convertingPriceUnit);
  }

  Future<List<WeeksCandle>> getWeeksCandles({required String market, String? to, int? count}) {
    return getWeeksCandlesWithClient(apiClient, market: market, to: to, count: count);
  }

  Future<List<MonthsCandle>> getMonthsCandles({required String market, String? to, int? count}) {
    return getMonthsCandlesWithClient(apiClient, market: market, to: to, count: count);
  }

  Future<List<Trade>> getTrades({required String market, String? to, int? count, String? cursor, String? daysAgo}) {
    return getTradesWithClient(apiClient, market: market, to: to, count: count, cursor: cursor, daysAgo: daysAgo);
  }

  Future<List<Ticker>> getTickers({required List<String> markets}) {
    return getTickersWithClient(apiClient, markets: markets);
  }

  Future<List<OrderBook>> getOrderBooks({required List<String> markets}) {
    return getOrderBooksWithClient(apiClient, markets: markets);
  }
}
