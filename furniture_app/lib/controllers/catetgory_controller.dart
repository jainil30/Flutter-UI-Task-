import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

/*Created By: Tushar Jethva
  used_for: to manage categories on click and show data categories wise
 */
class MyCategoryController extends GetxController{
  final RxInt _currentCategoryIndex = 0.obs;
  
  int get currentCategoryIndex => _currentCategoryIndex.value;

  set setCurrentCategoryIndex(int val){
    _currentCategoryIndex.value = val;
  }
}