import 'package:get/get.dart';

class FavouritesController extends GetxController {
  RxList<String> fruitList = ["Apple", "Mango", "Orange", "Banana"].obs;
  RxList tempList = [].obs;

  addFav(String value) {
    tempList.add(value);
  }

  removeFav(String value) {
    tempList.remove(value);
  }
}
