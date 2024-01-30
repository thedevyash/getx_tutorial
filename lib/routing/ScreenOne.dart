import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/routing/ScreenTwo.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({
    super.key,
  });

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        child: Text(
            "Screen One ${Get.arguments[0]} aur ye dusra argument ${Get.arguments[1]}"),
        onPressed: () => Get.to(ScreenTwo()),
      )),
    );
  }
}
