class ProductModel {
  String? name;
  String? image;
  String? description;
  String? price;
  String? duration;

  ProductModel({this.name, this.image, this.description, this.price, this.duration});

  // receiving data from server
  factory ProductModel.fromMap(map) {
    return ProductModel(
        name: map['name'],
        image: map['image'],
        description: map['description'],
        price: map['price'],
        duration: map['duration']);
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'price': price,
      'duration': duration
    };
  }
}
