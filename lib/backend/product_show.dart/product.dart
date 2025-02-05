class Product {
  String id;
  String name;
  String description;
  String price;
  String image;
  String category;
  String subcategory;
  String rating;
  String discount;
  Map<String, String> sizes; // Use a map for sizes

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
    required this.subcategory,
    required this.rating,
    required this.discount,
    required this.sizes, // Now sizes is a map
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    // Convert sizes from Map<String, String>
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      image: json['image'],
      category: json['category'],
      subcategory: json['subcategory'],
      rating: json['rating'],
      discount: json['discount'],
      sizes:
          Map<String, String>.from(json['sizes']), // Deserialize the sizes map
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'price': price,
        'image': image,
        'category': category,
        'subcategory': subcategory,
        'rating': rating,
        'discount': discount,
        'sizes': sizes, // Serialize the sizes map
      };
}
