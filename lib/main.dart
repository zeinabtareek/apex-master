import 'package:apex/routes/app_route.dart';
import 'package:apex/routes/app_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder :()=> GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.productScreen,
        getPages: AppScreens.screens,
      ),
    );
  }
}
