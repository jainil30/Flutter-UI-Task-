import 'package:get/get.dart';

class MyFilterController extends GetxController {
  var _brandIndex = 0.obs;
  int get brandIndex => _brandIndex.value;

  set setBrandIndex(int val) {
    _brandIndex.value = val;
  }

  var _colorIndex = 0.obs;
  int get colorIndex => _colorIndex.value;

  set setColorIndex(int val) {
    _colorIndex.value = val;
  }

  var _startRange = 0.0.obs;
  var _endRange = 3000.0.obs;

  double get startRange => _startRange.value;
  double get endRange => _endRange.value;

  set setStartRange(double val) {
    _startRange.value = val;
  }

  set setEndRange(double val) {
    _endRange.value = val;
  }

  var _starIndex = 0.obs;
  int get starIndex => _starIndex.value;

  set setStarIndex(int val) {
    _starIndex.value = val;
  }

  var stars = 5.obs;
  void decreaseStars(){
    stars.value--;
  }
}
