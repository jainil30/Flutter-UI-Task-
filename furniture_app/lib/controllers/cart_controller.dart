import 'package:furniture_app/models/cart_model.dart';
import 'package:get/get.dart';

class MyCartController extends GetxController {
  RxList<MyCartModel> _cartItems = RxList<MyCartModel>();

  List<MyCartModel> get cartItems => _cartItems.value;

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
    update();
  }

  void decrementCount(MyCartModel item) {
    item.quantity = item.quantity! - 1;
    update();
  }

  void incrementQuantity(int quantity, MyCartModel cartItem) {
    cartItem.quantity = cartItem.quantity! + quantity;
    update();
  }
}
