
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class MyCategoryController extends GetxController{
  RxInt _currentCategoryIndex = 0.obs;
  
  int get currentCategoryIndex => _currentCategoryIndex.value;

  set setCurrentCategoryIndex(int val){
    _currentCategoryIndex.value = val;
  }
}