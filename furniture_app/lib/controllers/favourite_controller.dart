import 'package:furniture_app/models/interested_item_model.dart';
import 'package:get/get.dart';

/*Created By: Tushar Jethva
  used_for: to manage favourite items
 */
class MyFavouriteController extends GetxController {
  RxList<ItemModel> favouriteItems = RxList();

  void addFavourite(ItemModel item) {
    favouriteItems.add(item);
    update();
  }

  void removeFavourite(ItemModel item) {
    favouriteItems.remove(item);
    update();
  }

  void changeFavoriteTrue(ItemModel item) {
    item.isLiked = !item.isLiked!;
    update();
  }
}
