import 'package:furniture_app/models/cart_model.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:get/get.dart';

class MyCartController extends GetxController {
  RxList<MyCartModel> _cartItems = RxList<MyCartModel>();

  List<MyCartModel> get cartItems => _cartItems.value;

  RxDouble totalAmount = 0.0.obs;
  List<ItemModel> listOfItems = [];

  void addCartItem(MyCartModel cartItem) {
    bool isAdded = false;
    for (var element in _cartItems) {
      if (element.itemId == cartItem.itemId) {
        isAdded = true;
      }
    }
    if (!isAdded) {
      _cartItems.add(cartItem);
      Get.snackbar("Cart", "Cart item is added");
    } else {
      Get.snackbar("Cart", "Already in cart!");
    }
  }

  void removeCartItem(MyCartModel cartItem) {
    _cartItems.remove(cartItem);
  }

  void incrementCount(MyCartModel item) {
    int index = cartItems.indexWhere((e) => e.itemId == item.itemId);
    cartItems[index].quantity = item.quantity! + 1;
    totalAmountF();
    update();
  }

  void decrementCount(MyCartModel item) {
    item.quantity = item.quantity! - 1;
    totalAmountF();
    update();
  }

  double totalAmountF() {
    totalAmount.value = 0.0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalAmount.value =
          totalAmount.value + (listOfItems[i].price! * _cartItems[i].quantity!);
    }
    print(totalAmount.value);
    return totalAmount.value;
  }

}
