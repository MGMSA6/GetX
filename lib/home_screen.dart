import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Anand", "06",
              backgroundColor: Colors.blue,
              onTap: (snap){
              },
              snackPosition: SnackPosition.TOP,colorText: Colors.white,
              icon: Icon(Icons.add));
        },
      ),
    );
  }
}
