class MyCartModel {
  int? itemId;
  int? quantity;
  double? totalAmount;

  MyCartModel({this.itemId, this.quantity, this.totalAmount});

  MyCartModel.fromJson(Map<String, dynamic> json) {
    itemId = json['itemId'];
    quantity = json['quantity'];
    totalAmount = json['totalAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemId'] = this.itemId;
    data['quantity'] = this.quantity;
    data['totalAmount'] = this.totalAmount;
    return data;
  }
}