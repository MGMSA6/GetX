import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/favourites_controller.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  // List<String> fruitList = ["Apple", "Mango", "Orange", "Banana"];
  // List<String> tempList = [];

  final FavouritesController favouritesController =
      Get.put(FavouritesController());

  @override
  Widget build(BuildContext context) {
    print("Widget Rebuild");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Favourites"),
      ),
      body: ListView.builder(
          itemCount: favouritesController.fruitList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if (favouritesController.tempList.contains(
                      favouritesController.fruitList[index].toString())) {
                    favouritesController.removeFav(
                        favouritesController.fruitList[index].toString());
                  } else {
                    favouritesController.addFav(
                        favouritesController.fruitList[index].toString());
                  }
                },
                title: Text(favouritesController.fruitList[index].toString()),
                trailing: Obx(() => Icon(
                      Icons.favorite,
                      color: favouritesController.tempList.contains(
                              favouritesController.fruitList[index].toString())
                          ? Colors.red
                          : Colors.white,
                    )),
              ),
            );
          }),
    );
  }
}
