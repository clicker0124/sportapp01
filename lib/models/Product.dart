class Product {
  final String brand;
  final String category;
  final String id;
  final String name;
  final String picture;
  final String description;
  final double price;
  final int quantity;
  // final int sizes;

  Product({
    required this.quantity,
    // required this.sizes,
    required this.brand,
    required this.category,
    required this.id,
    required this.name,
    required this.picture,
    required this.description,
    required this.price,
  });
}
