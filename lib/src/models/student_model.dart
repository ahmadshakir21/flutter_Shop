class Student {
  final String id;
  final String itemName;
  final String description;
  final String imageUrl;
  final String price;
  final List<String> color;
  final String made;

  Student(
      {required this.id,
      required this.itemName,
      required this.description,
      required this.imageUrl,
      required this.price,
      required this.color,
      required this.made});

   factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map["id"],
      itemName: map["itemName"],
      description: map["description"],
      imageUrl: map["imageUrl"],
      price: map["price"],
      color: map["color"],
      made: map["map"],
    );
  }
}
