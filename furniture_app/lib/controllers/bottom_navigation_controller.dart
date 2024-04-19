import 'package:get/get.dart';

/*Created By: Tushar Jethva
  used_for: to manage navigation with 
*/
class BottomNavigationController extends GetxController{
  final RxInt _bottomIndex = 0.obs;

  int get bottomIndex => _bottomIndex.value;

  set setBottomIndex(int val){
    _bottomIndex.value = val;
  }
}