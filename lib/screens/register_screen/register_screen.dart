import 'package:apex/component/clip_path.dart';
import 'package:apex/component/register_button.dart';
import 'package:apex/component/rich_text.dart';
import 'package:apex/component/text_field.dart';
import 'package:apex/routes/app_route.dart';
import 'package:apex/screens/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height * 0.2,
              child: CustomPaint(
                child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    height: 50,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ],
              ),
                painter: Shapes(),
              ),
            ),
            FixedTextField(
              key: key,
              label: "Name",
              function: (v) {},
            ),
            FixedTextField(
              key: key,
              label: "Email",
              function: (v) {},
            ),
            FixedTextField(
              key: key,
              label: "Phone",
              function: (v) {},
            ),
            FixedTextField(
              key: key,
              label: "Password",
              function: (v) {},
            ),
            box(),
            RegisterButton(
              key: key,
              function: () {
                Get.to(ProductsScreen());
              },
              label: "Register",
            ),
            box(),
            FixedRichText(
              key: key,
              leftLabel: "Already have an account?",
              rightLabel: "Log in",
              onTab: () {
                Get.toNamed(AppRoutes.loginScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
  Widget box() {
    return const SizedBox(
      height: 40,
    );
  }
}
