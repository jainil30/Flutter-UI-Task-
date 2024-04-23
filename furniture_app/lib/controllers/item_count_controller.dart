import 'package:get/get.dart';

/*Created By: Tushar Jethva
  
 */
class ItemCountController extends GetxController{
  RxInt _itemCount = 0.obs;
  int get itemCount => _itemCount.value;

  set setItemCount(int val){
    _itemCount.value = val;
  }
}