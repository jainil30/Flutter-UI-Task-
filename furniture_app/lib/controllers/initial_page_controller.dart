import 'package:get/get.dart';


/*Create By: Tushar Jethva

*/
class InitialPageController extends GetxController{
  RxInt _initialPage = 0.obs;

  int get initialPage => _initialPage.value;

  set setInitialPage(int val){
    _initialPage.value = val;
  }
}