import 'package:flutter/material.dart';
import 'package:progetto1/components/product_model.dart';
import 'package:progetto1/components/text_headline.dart';

class GridViewPage extends StatelessWidget {
  final products = ProductModel.products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TextHeadline("ListView Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: secondBody(),
          ),
        ));
  }

  Widget firstBody() => GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 0.5,
        children: List.generate(
          products.length,
          (index) => ProductCard(
            model: products[index],
          ),
        ),
      );

  Widget secondBody() => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 30,
          mainAxisSpacing: 0,
          childAspectRatio: 0.45,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) => ProductCard(
          model: products[index],
        ),
      );
}

class ProductCard extends StatelessWidget {
  final ProductModel model;
  ProductCard({required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          height: 150,
          child: Image.network(
            model.imageUrl,
            fit: BoxFit.contain,
          ),
        ),
        ListTile(
          title: Text(model.description),
          subtitle: Text(
            model.price.toStringAsFixed(2) + "€",
          ),
        )
      ],
    );
  }
}
