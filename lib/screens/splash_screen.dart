import 'package:apex/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.mainColor,
      body: Column(
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
      ),
    );
  }
}
