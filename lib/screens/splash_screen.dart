import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:apex/constant.dart';
import 'package:apex/screens/login_screen/login_screen.dart';
import 'package:apex/screens/product_details.dart';
import 'package:apex/screens/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.mainColor,
      body: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 80,
              child: Image.asset("assets/images/logo.png"),
            ),
            const Center(
                child: Text(
              "Apex",
              style: TextStyle(
                color: K.blackColor,
                fontSize: 22,
                fontFamily: 'Poppins-Bold',
              ),
            ))
          ],
        ), nextScreen:  ProductDetails(),
        backgroundColor: K.mainColor,
        splashIconSize: 250,
        duration: 4000,
        splashTransition: SplashTransition.scaleTransition,
        animationDuration: Duration(seconds: 1),
      ),
    );
  }
}
