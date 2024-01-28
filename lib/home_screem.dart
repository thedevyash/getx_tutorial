import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        title: Text("GetX Tutorial"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar('Snackbar', "Ye Raha tumhara message");
      }),
    );
  }
}
