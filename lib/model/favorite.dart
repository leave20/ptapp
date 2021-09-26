class Favorite {
  late int id;
  late String name;
  late String category;
  late String imageUrl;
  late String oldPrice;
  late String price;

  Favorite(
      {required this.id,
      required this.name,
      required this.category,
      required this.imageUrl,
      required this.oldPrice,
      required this.price});

  Favorite.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    imageUrl = json['imageUrl'];
    oldPrice = json['oldPrice'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['category'] = this.category;
    data['imageUrl'] = this.imageUrl;
    data['oldPrice'] = this.oldPrice;
    data['price'] = this.price;
    return data;
  }
}
