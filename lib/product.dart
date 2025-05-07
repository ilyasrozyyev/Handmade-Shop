class Product {
  final String name;
  final String price;
  final String image;
  final String? description;
  final List<Product>? similarProducts;

  Product({
    required this.name,
    required this.price,
    required this.image,
    this.description,
    this.similarProducts,
  });

  Map<String, String> toMap() {
    return {
      "name": name,
      "price": price,
      "image": image,
      'description': description ?? '',
    };
  }

  factory Product.fromMap(Map<String, String> map) {
    return Product(
      name: map['name']!,
      price: map['price']!,
      image: map['image']!,
      description: map['description'],
    );
  }
}
