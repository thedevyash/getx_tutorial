import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/counter%20example/counter_controller.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final CounterController controller = Get.put(CounterController());
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          //observant hota hai obx
          child: Obx(
        () => Text(controller.counter.toString()),
      )),
      floatingActionButton: IconButton(
          icon: Icon(
            Icons.add,
          ),
          onPressed: () {
            controller.incrementCounter();
          }),
    );
  }
}
