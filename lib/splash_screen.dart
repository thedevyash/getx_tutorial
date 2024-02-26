import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/constants.dart';
import 'package:getx_tutorial/home_screem.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    // Get.off(HomeScreen());
    // Navigator.of(context)
    //     .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  double width = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: -161,
          left: -38,
          child: Container(
            width: width * 1.14,
            height: height * 0.55,
            decoration: BoxDecoration(
                color: colors.ellipseC,
                borderRadius: BorderRadius.circular(width)),
          ),
        ),
        Positioned(
          bottom: 0,
          left: -252,
          child: Container(
            height: height * 0.49,
            width: width * 1.08,
            decoration: BoxDecoration(
                color: colors.ellipseC,
                borderRadius: BorderRadius.circular(width)),
          ),
        ),

        Stack(alignment: Alignment.center, children: [
          Positioned(
            top: height * 0.212,
            child: SvgPicture.asset(
              'assets/images/OBJECTS.svg',
              height: height * 0.282,
              width: width * 0.694,
            ),
          ),
          Positioned(
            top: height * 0.53,
            child: Text(
              "HealthKare.AI",
              style: GoogleFonts.poppins(
                  fontSize: width * 0.08,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
        ]),

        // Positioned(
        //   bottom: 10,
        //   left: 100,
        //   child: Container(
        //       constraints: BoxConstraints(
        //           maxHeight: MediaQuery.of(context).size.height * 0.45,
        //           maxWidth: MediaQuery.of(context).size.width * 0.45),
        //       decoration: const BoxDecoration(
        //           color: colors.ellipseC,
        //           borderRadius: BorderRadius.only(
        //               topRight: Radius.circular(180),
        //               bottomRight: Radius.circular(180)))),
        // )
      ]),
    );
  }
}
