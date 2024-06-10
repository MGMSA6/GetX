import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/route_names.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  //Get.to(ScreenOne(name: "Anand",));
                  Get.toNamed(RouteNames.screenOne, arguments: ['Anand']);
                },
                child: Text("Go to Screen One")),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Anand", "06",
              backgroundColor: Colors.blue,
              onTap: (snap) {},
              snackPosition: SnackPosition.TOP,
              colorText: Colors.white,
              icon: Icon(Icons.add));
        },
      ),
    );
  }
}
