class ProductModel {
  final String imageUrl;
  final String description;
  final double price;

  ProductModel({
    required this.imageUrl,
    required this.description,
    required this.price,
  });

  static final products = [
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/61ipQjx1FUL._AC_UL320_.jpg",
      description: "Modello 1",
      price: 19.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/71V+e9If2vL._AC_UL320_.jpg",
      description: "Modello 2",
      price: 29.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/81Fk-T0USaL._AC_UL320_.jpg",
      description: "Modello 3",
      price: 15.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/61m-qPp1iLL._AC_UL320_.jpg",
      description: "Modello 4",
      price: 13.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/61VZW5AbkuS._AC_UL320_.jpg",
      description: "Modello 5",
      price: 39.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/71YoAHYSL7L._AC_UL320_.jpg",
      description: "Modello 6",
      price: 11.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/61QB+jkB6CL._AC_UL320_.jpg",
      description: "Modello 7",
      price: 9.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/71uKg9b51eL._AC_UL320_.jpg",
      description: "Modello 8",
      price: 19.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/81Lw3ISqrxL._AC_UL320_.jpg",
      description: "Modello 9",
      price: 19.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/61KZB7VWh7L._AC_UL320_.jpg",
      description: "Modello 10",
      price: 19.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/71lBwWBpXcL._AC_UL320_.jpg",
      description: "Modello 11",
      price: 19.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/61BCBUiL7dL._AC_UL320_.jpg",
      description: "Modello 12",
      price: 25.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/61kLl0IKDIS._AC_UL320_.jpg",
      description: "Modello 13",
      price: 42.99,
    ),
    ProductModel(
      imageUrl:
          "https://m.media-amazon.com/images/I/71GCzRKT75L._AC_UL320_.jpg",
      description: "Modello 14",
      price: 59.99,
    ),
  ];
}
