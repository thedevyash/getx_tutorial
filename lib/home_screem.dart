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
      appBar: AppBar(
        title: Text("GetX Tutorial"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              subtitle: Text("GetX dialog alert subtitle"),
              title: Text("GetX Dilog alert"),
              onTap: () {
                Get.defaultDialog(
                  title: "GetX dialog alert title",
                  middleText: "Middle text hi yeh",
                  //ye to bna bnaya hai
                  textConfirm: 'Yes',
                  textCancel: 'No',
                  onConfirm: () => Get.back(),
                  //chaho to custom bana skte ho
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              subtitle: Text("GetX Bottom sheet subtitle"),
              title: Text("GetX Bottom sheet"),
              onTap: () {
                Get.bottomSheet(
                    enableDrag: true,
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(children: [
                        ListTile(
                          iconColor: Colors.black,
                          textColor: Colors.black,
                          title: Text("Light Mode"),
                          leading: Icon(Icons.light_mode),
                          //bc itna easy hai theme chngen krna hai 😭😭
                          //aaj se provider use krna bnd
                          onTap: () => Get.changeTheme(ThemeData.light()),
                        ),
                        ListTile(
                          iconColor: Colors.black,
                          textColor: Colors.black,
                          title: Text("Dark Mode"),
                          leading: Icon(Icons.dark_mode),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        )
                      ]),
                    ));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        //icon se leke onpressed boht kch hai
        //mastt chiz hai🥰
        Get.snackbar('Snackbar', "Ye Raha tumhara message",
            snackPosition: SnackPosition.BOTTOM);
        print("runn");
      }),
    );
  }
}
