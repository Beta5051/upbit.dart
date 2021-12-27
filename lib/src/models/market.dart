part of '../model.dart';

enum MarketWarning { NONE, CAUTION }

class Market with Model {
  final String market;
  final String korean_name;
  final String english_name;
  final MarketWarning? market_warning;

  const Market({
    required this.market,
    required this.korean_name,
    required this.english_name,
    this.market_warning,
  });

  factory Market.fromJson(Map<String, dynamic> json) {
    return Market(
      market: json['market'],
      korean_name: json['korean_name'],
      english_name: json['english_name'],
      market_warning: json['market_warning'] != null ? StringToEnum(MarketWarning.values, json['market_warning']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'market': market,
      'koren_name': korean_name,
      'english_name': english_name,
    };
    if (market_warning != null) {
      json['market_warning'] = EnumToString(market_warning!);
    }
    return json;
  }
}