import 'package:apex/routes/app_route.dart';
import 'package:apex/screens/login_screen/login_screen.dart';
import 'package:apex/screens/product_details.dart';
import 'package:apex/screens/register_screen/register_screen.dart';
import 'package:apex/screens/splash_screen.dart';
import 'package:get/get.dart';

class AppScreens {
  static final screens = [
    GetPage(name: AppRoutes.splashScreen, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.registerScreen, page: () => const RegisterScreen()),
    GetPage(name: AppRoutes.productDetailsScreen, page: () => ProductDetails()),
  ];
}
