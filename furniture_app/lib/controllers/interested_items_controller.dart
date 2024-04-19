import 'package:furniture_app/models/interested_item_model.dart';
import 'package:get/get.dart';

/*Created By: Tushar Jethva

 */
class MyItemsController extends GetxController{
  RxList<ItemModel> intrestedItems = RxList<ItemModel>();
  RxList<ItemModel> popularItems = RxList<ItemModel>();

  void setInteretedItemsList(List<Map<String,dynamic>> map){
    intrestedItems.clear();
    for(var data in map){
      intrestedItems.add(ItemModel.fromJson(data));
    }
    update();
  }

    void setPopularItemsList(List<Map<String,dynamic>> map){
    popularItems.clear();
    for(var data in map){
      popularItems.add(ItemModel.fromJson(data));
    }
    update();
  }
}