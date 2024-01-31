// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_tutorial/home_screem.dart';
// import 'package:getx_tutorial/routing/ScreenOne.dart';
// import 'package:getx_tutorial/routing/ScreenTwo.dart';
// import 'package:getx_tutorial/routing/homeScreenRouting.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     //GetMaterialapp use krna pdega agr GetX utilities use krmi hai to
//     return GetMaterialApp(
//       //routes use krne ke liye
//       // getPages: [
//       //   GetPage(name: '/', page: () => HomeScreenRouting()),
//       //   GetPage(name: '/ScreenOne', page: () => ScreenOne()),
//       //   GetPage(name: '/ScreenTwo', page: () => ScreenTwo())
//       // ],
//       home: HomeScreenRouting(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Localisation%20and%20Language%20Support/HomeScreen.dart';
import 'package:getx_tutorial/Localisation%20and%20Language%20Support/languages.dart';
import 'package:getx_tutorial/TestScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        //language select krne ke liye
        //yaha se puri app ki language change wrna get.update locale se button dabakle change krdo language
        //agar ye nahi doge to koi language select nhi hogi
        locale: Locale('en', 'US'),
        //agar koi bhi lnguage selected nhi hi to ye select hoga
        fallbackLocale: Locale('en', 'US'),
        translations: Languages(),
        home: HomeScreen());
  }
}
