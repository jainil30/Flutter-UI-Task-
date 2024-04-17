class ItemModel {
  String? imageUrl;
  String? imageBig;
  String? itemName;
  String? shopName;
  double? price;
  String? description;
  int? likes;
  bool? isLiked;

  ItemModel(
      {this.imageUrl,
      this.itemName,
      this.shopName,
      this.price,
      this.description,
      this.likes,
      this.isLiked,
      this.imageBig});
  ItemModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    itemName = json['itemName'];
    shopName = json['shopName'];
    price = json['price'];
    description = json['description'];
    likes = json['likes'];
    isLiked = json['isLiked'];
    imageBig = json['imageBig'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['itemName'] = this.itemName;
    data['shopName'] = this.shopName;
    data['price'] = this.price;
    data['description'] = this.description;
    data['likes'] = this.likes;
    data['isLiked'] = this.isLiked;
    data['imageBig'] = this.imageBig;
    return data;
  }
}
