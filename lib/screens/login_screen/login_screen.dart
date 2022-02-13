import 'package:apex/component/clip_path.dart';
import 'package:apex/component/register_button.dart';
import 'package:apex/component/rich_text.dart';
import 'package:apex/component/text_field.dart';
import 'package:apex/constant.dart';
import 'package:apex/routes/app_route.dart';
import 'package:apex/screens/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: Get.width.w,
              height: Get.height * .9.h,
              child: CustomPaint(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150.w,
                      height: 120.h,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    Text(
                      "Apex",
                      style: TextStyle(
                        color: K.blackColor,
                        fontSize: 8.sp,
                        fontFamily: "Poppins-Bold",
                      ),
                    )
                  ],
                ),
                painter: Shapes(),
              ),
            ),
            FixedTextField(
              key: key,
              label: "Email Address",
              function: (v) {},
            ),
            FixedTextField(
              key: key,
              label: "Password",
              function: (v) {},
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                    fontSize: 6.sp,
                    color: K.blackColor,
                    fontFamily: "Poppins SemiBold",
                  ),
                ),
              ),
            ),
            K.sizedBoxH,
            RegisterButton(
              key: key,
              function: () {
                Get.toNamed(AppRoutes.registerScreen);
              },
              label: "Login",
            ),
            K.sizedBoxH,
            FixedRichText(
              key: key,
              leftLabel: "Don't have an account?",
              rightLabel: "Register",
              onTab: () {
                Get.toNamed(AppRoutes.cartScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
