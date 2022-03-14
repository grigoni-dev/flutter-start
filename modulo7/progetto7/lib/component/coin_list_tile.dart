import 'package:flutter/material.dart';

class CoinListTile extends StatelessWidget {
  final String symbol;
  final String name;
  final double price;
  final double variation24Hours;

  CoinListTile({
    required this.symbol,
    required this.name,
    required this.price,
    required this.variation24Hours,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        symbol.toUpperCase(),
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        name,
        style: TextStyle(color: Colors.white54, fontSize: 14),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "\$ ${price.toStringAsFixed(2)}",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "${variation24Hours.toStringAsFixed(2)}%",
            style: TextStyle(
                color: variation24Hours >= 0 ? Colors.green : Colors.red,
                fontSize: 14),
          ),
        ],
      ),
    );
  }
}
