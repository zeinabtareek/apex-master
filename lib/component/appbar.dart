import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onPressed;
  List<Widget> actions = [];



  CustomAppBar({
    Key? key,
    required this.onPressed,
    required this.actions ,

  }) : super(key: key);
  GlobalKey<ScaffoldState> ScaffoldKey = new GlobalKey<ScaffoldState>();

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
      actions: [
        IconButton(
          onPressed: () {},
          icon: IconButton(
            // Use the EvaIcons class for the IconData
              icon: const Icon(
                EvaIcons.shoppingCartOutline,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {}),
        ),
        K.sizedBoxW,
      ],
    );
  }
}
