class ProductModel {
  String name;
  String imagePath;
  String description;
  double price;
  bool isSelected = false;

  ProductModel({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.price,
    this.isSelected = false,
  });
}