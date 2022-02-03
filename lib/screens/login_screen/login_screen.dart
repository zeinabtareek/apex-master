import 'package:apex/component/clip_path.dart';
import 'package:apex/component/register_button.dart';
import 'package:apex/component/rich_text.dart';
import 'package:apex/component/text_field.dart';
import 'package:apex/constant.dart';
import 'package:apex/routes/app_route.dart';
import 'package:apex/screens/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
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
              width: Get.width,
              height: Get.height * 0.5,
              child: CustomPaint(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 80,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    const Text(
                      "Apex",
                      style: TextStyle(
                        color: K.blackColor,
                        fontSize: 22,
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                    fontSize: 14,
                    color: K.blackColor,
                    fontFamily: "Poppins SemiBold",
                  ),
                ),
              ),
            ),
            K.sizedBoxH,
            RegisterButton(
              key: key,
              function: () {},
              label: "Login",
            ),
            K.sizedBoxH,
            FixedRichText(
              key: key,
              leftLabel: "Don't have an account?",
              rightLabel: "Register",
              onTab: () {
                Get.to(()=>const RegisterScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
