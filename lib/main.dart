import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/home_screem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //GetMaterialapp use krna pdega agr GetX utilities use krmi hai to
    return GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
