import 'package:flutter/material.dart';
import 'package:progetto6/models/nft_product_model.dart';

class NftCardComponent extends StatelessWidget {
  final NftProductModel product;

  NftCardComponent({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          // è un widget che serve a proporzionare la dimensione del contenitore
          aspectRatio: 1 / 1,
          child: ClipRRect(
            // è un contenitore rettangolare. Vedi anche ClipOval, ClipPath
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              product.imgUrl,
              fit: BoxFit.cover,
              color: Colors.black12,
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          product.name,
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "€ ${product.price}",
          style: TextStyle(
              color: Colors.black38,
              fontSize: 14,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
