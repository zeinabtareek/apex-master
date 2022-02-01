import 'package:apex/screens/checkout_screens/cart_screen.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions ;



  const CustomAppBar({
    Key? key,
     this.actions ,

  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: K.whiteColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: K.blackColor,
        ),
      ),
      actions: actions,

    );
  }
}
