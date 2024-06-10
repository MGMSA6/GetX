import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/counter_controller.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print("Widget Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Obx(() => Text("Count ${controller.counter.value}", style: TextStyle(fontSize: 20),)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {
          //   counter++;
          // });
          controller.incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
