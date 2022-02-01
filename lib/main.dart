import 'package:apex/routes/app_route.dart';
import 'package:apex/routes/app_screen.dart';
import 'package:apex/screens/product_details.dart';
import 'package:apex/screens/product_details/products_screen.dart';
import 'package:apex/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      getPages: AppScreens.screens,
    );
  }
}
