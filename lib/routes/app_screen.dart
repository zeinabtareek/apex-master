import 'package:apex/routes/app_route.dart';
import 'package:apex/screens/cart_screen/cart_screen.dart';
import 'package:apex/screens/checkout_screens/checkout_screen.dart';
import 'package:apex/screens/checkout_screens/pyment_screen.dart';
import 'package:apex/screens/home/home.dart';
import 'package:apex/screens/login_screen/login_screen.dart';
import 'package:apex/screens/order_screens/address_screen.dart';
import 'package:apex/screens/product_details/product_details.dart';
import 'package:apex/screens/product_screen/products_screen.dart';
import 'package:apex/screens/profile_screen/profile_screen.dart';
import 'package:apex/screens/register_screen/register_screen.dart';
import 'package:apex/screens/splash_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScreens {
  static final screens = [
    GetPage(name: AppRoutes.splashScreen, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.homeScreen, page: () => const Home()),
    GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.registerScreen, page: () => const RegisterScreen()),
    GetPage(
        name: AppRoutes.productDetailsScreen,
        page: () => const ProductDetails()),
    GetPage(name: AppRoutes.productScreen, page: () => const ProductsScreen()),
    GetPage(name: AppRoutes.profileScreen, page: () => const ProfileScreen()),
    GetPage(name: AppRoutes.cartScreen, page: () => const CartScreen()),
    GetPage(name: AppRoutes.addressScreen, page: () => const AddressScreen()),
    GetPage(name: AppRoutes.checksScreen, page: () => const CheckOutScreen()),
    GetPage(name: AppRoutes.paymentScreen, page: () => const PaymentScreen()),
  ];
}
