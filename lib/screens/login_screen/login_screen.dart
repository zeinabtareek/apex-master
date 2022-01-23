import 'package:apex/component/clip_path.dart';
import 'package:apex/component/register_button.dart';
import 'package:apex/component/rich_text.dart';
import 'package:apex/component/text_field.dart';
import 'package:apex/constant.dart';
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
            CustomPaint(
              size: Size(Get.width, (Get.height * 0.5).toDouble()),
              painter: Shapes(),
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
                  style: TextStyle(color: K.grayColor),
                ),
              ),
            ),
            box(),
            RegisterButton(
              key: key,
              function: () {},
              label: "Login",
            ),
            box(),
            FixedRichText(
              key: key,
              leftLabel: "Don't have an account?",
              rightLabel: "Register",
              onTab: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget box() {
    return const SizedBox(
      height: 20,
    );
  }
}
