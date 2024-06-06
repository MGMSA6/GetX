import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x/home_screen.dart';
import 'package:get_x/route_names.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Two"),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                //Get.to(HomeScreen());
                Get.toNamed(RouteNames.responsive);
              },
              child: Text("Responsive Screen"),
            ),
          )
        ],
      ),
    );
  }
}
