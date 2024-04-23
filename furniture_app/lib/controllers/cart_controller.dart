import 'package:furniture_app/models/cart_model.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:get/get.dart';

/*Created By: Tushar Jethva
  used_for: to manage cart
 */
class MyCartController extends GetxController {
  final RxList<MyCartModel> _cartItems = RxList<MyCartModel>();

  // ignore: invalid_use_of_protected_member
  List<MyCartModel> get cartItems => _cartItems.value;

  RxDouble totalAmount = 0.0.obs;
  List<ItemModel> listOfItems = [];

  /*used_for: to add item in cart
    params: item
    model: MyCartModel
   */
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

  /*used_for: to remove item from cart
    params: item
    model: MyCartModel
   */
  void removeCartItem(MyCartModel cartItem) {
    _cartItems.remove(cartItem);
  }

  /*used_for: to increment item count to buy
    params: item
    model: MyCartModel
   */
  void incrementCount(MyCartModel item) {
    int index = cartItems.indexWhere((e) => e.itemId == item.itemId);
    cartItems[index].quantity = item.quantity! + 1;
    totalAmountF();
    update();
  }

  /*used_for: to decrement item count to buy
    params: item
    model: MyCartModel
   */
  void decrementCount(MyCartModel item) {
    item.quantity = item.quantity! - 1;
    totalAmountF();
    update();
  }

  //used_for: to make an total amount

  double totalAmountF() {
    totalAmount.value = 0.0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalAmount.value =
          totalAmount.value + (listOfItems[i].price! * _cartItems[i].quantity!);
    }
    return totalAmount.value;
  }
}
