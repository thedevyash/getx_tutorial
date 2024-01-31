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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("hello..this text is not translated "),
          ListTile(
            //end mei bs tr laga do
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () => Get.updateLocale(Locale('en', 'US')),
                  child: Text("English Karo")),
              SizedBox(
                width: 20,
              ),
              TextButton(
                  onPressed: () => Get.updateLocale(Locale('hi', 'IND')),
                  child: Text("Hindi Karo"))
            ],
          )
        ],
      ),
    );
  }
}
