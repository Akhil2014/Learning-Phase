class WomenProduct {
  final int id;
  final String title;
  final String description;
  final String image;
  final double price;

  WomenProduct({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
  });


  factory WomenProduct.fromJson(Map<String, dynamic> json) {
    return WomenProduct(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
      price: (json['price'] as num).toDouble(),
    );
  }

}
