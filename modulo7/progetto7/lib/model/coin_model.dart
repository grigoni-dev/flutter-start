import 'dart:convert';

class CoinModel {
  final String symbol;
  final String name;
  final double price;
  final double variation24Hours;

  CoinModel({
    required this.symbol,
    required this.name,
    required this.price,
    required this.variation24Hours,
  });

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'name': name,
      'price': price,
      'variation24Hours': variation24Hours,
    };
  }

  factory CoinModel.fromJson(String source) =>
      CoinModel.fromMap(json.decode(source)["data"]);

  factory CoinModel.fromMap(Map<String, dynamic> map) {
    return CoinModel(
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
      price: map['quote']['USD']['price']?.toDouble() ?? 0.0,
      variation24Hours:
          map['quote']['USD']['percent_change_24h']?.toDouble() ?? 0.0,
    );
  }
}
