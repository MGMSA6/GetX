import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/route_names.dart';

class Responsive extends StatefulWidget {
  const Responsive({super.key});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Size"),
      ),
      body: Column(
        children: [
          Container(
            width: Get.width * .3,
            height: Get.height * .2,
            color: Colors.red,
          ),
          Container(
            width: Get.width * .9,
            height: Get.height * .3,
            color: Colors.green,
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                Get.toNamed(RouteNames.language);
              },
              child: Text("Language Scren"))
        ],
      ),
    );
  }
}
