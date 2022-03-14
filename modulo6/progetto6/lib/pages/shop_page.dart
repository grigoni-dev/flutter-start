import 'package:flutter/material.dart';
import 'package:progetto6/components/nft_card_component.dart';
import 'package:progetto6/models/nft_product_model.dart';

class ShopPage extends StatelessWidget {
  List<NftProductModel> products = NftProductModel.products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16, childAspectRatio: 0.7),
      itemBuilder: (context, index) =>
          NftCardComponent(product: products[index]),
      itemCount: products.length,
    );
  }
}
