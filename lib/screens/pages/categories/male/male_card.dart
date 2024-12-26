// category_list.dart
class Category {
  final String name;
  final String imagePath;

  Category({required this.name, required this.imagePath});
}

final List<Category> categories = [
  Category(name: "T-Shirt", imagePath: 'assets/male_tshirt.jpeg'),
  Category(name: "Shirt", imagePath: 'assets/male_shirt.jpg'),
  Category(name: "Pant", imagePath: 'assets/male_tshirt.jpeg'),
  Category(name: "Boxer", imagePath: 'assets/male_tshirt.jpeg'),
  // Add more categories here
];
