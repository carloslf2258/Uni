class Shoe {
  final String name;
  final double price;
  final String imagePath;
  final String description;

  Shoe({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
  });

  //To recognize Shoes, because of the selectedItems after delete action
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Shoe && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;
}
