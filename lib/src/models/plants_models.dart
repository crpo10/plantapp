class Plants {
  final int id;
  final String name;
  final double? price;
  final String? description;
  final String image;

  Plants({
    required this.image,
    required this.id,
    required this.name,
    this.price,
    this.description,
  });
}
