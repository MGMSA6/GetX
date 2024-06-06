import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_x/route_names.dart';
import 'package:get_x/screen_two.dart';

class ScreenOne extends StatefulWidget {
  final String name;

  ScreenOne({Key? key, this.name = ''}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One " + Get.arguments[0].toString()),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                //Get.to(ScreenTwo());
                Get.toNamed(RouteNames.screenTwo);
              },
              child: Text("Go to Screen Two"),
            ),
          )
        ],
      ),
    );
  }
}
