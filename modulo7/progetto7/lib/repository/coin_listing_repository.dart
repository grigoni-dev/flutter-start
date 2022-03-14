import 'dart:convert';

import 'package:progetto7/model/coin_model.dart';
import 'package:http/http.dart' as http;

class CoinListingRepository {
  static Future<List<CoinModel>> all() async {
    final url = Uri.parse(
        "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=100&convert=USD");
    final response = await http.get(url,
        headers: {"X-CMC_PRO_API_KEY": "8a0e093f-4f22-4376-80de-0ffc95d286f1"});

    final jsonData =
        (json.decode(response.body)["data"] as List<dynamic>).take(100);
    final cryptoList = jsonData.map((cryptoData) {
      return CoinModel.fromMap(cryptoData);
    }).toList();

    return cryptoList;
  }
}
