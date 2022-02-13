import 'package:apex/constant.dart';
import 'package:apex/screens/cart_screen/cart_screen.dart';
import 'package:apex/screens/home/controller/home_controller.dart';
import 'package:apex/screens/home_screen/home_screen.dart';
import 'package:apex/screens/product_screen/products_screen.dart';
import 'package:apex/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> body = [
      HomeScreen(),
      ProductsScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
    final _controller = Get.put(HomeController());
    return Scaffold(
        body: Obx(() => Center(
              child: body.elementAt(_controller.selectIndex),
            )),
        bottomNavigationBar: Obx(() => ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              child: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      MdiIcons.homeOutline,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      MdiIcons.directions,
                    ),
                    label: 'Directions',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      MdiIcons.cartOutline,
                    ),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      MdiIcons.heartOutline,
                    ),
                    label: 'Favorites',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      MdiIcons.accountOutline,
                    ),
                    label: 'Profile',
                  ),
                ],
                selectedItemColor: K.mainColor,
                unselectedItemColor: K.grayColor,
                backgroundColor: K.whiteColor,
                type: BottomNavigationBarType.fixed,
                currentIndex: _controller.selectIndex,
                onTap: (index) {
                  _controller.select(index);
                },
              ),
            )));
  }
}
