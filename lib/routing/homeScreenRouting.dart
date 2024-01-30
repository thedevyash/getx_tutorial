import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/routing/ScreenOne.dart';

class HomeScreenRouting extends StatefulWidget {
  const HomeScreenRouting({super.key});

  @override
  State<HomeScreenRouting> createState() => _HomeScreenRoutingState();
}

class _HomeScreenRoutingState extends State<HomeScreenRouting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        child: Text("Mujhe Dabao"),
        //arguments pass krne ki ninja technique
        onPressed: () => Get.toNamed('/ScreenOne',
            arguments: ['AlooTikkiHunter', 'JaiHoBaba']),
      )),
    );
  }
}
