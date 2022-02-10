import 'package:apex/constant.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ConvexAppBar(
      items: const [
        TabItem(
          icon: Icons.home,
          title: 'Home',
        ),
        TabItem(
          icon: Icons.map,
          title: 'Discovery',
        ),
        TabItem(icon: Icons.add, title: 'Add'),
        TabItem(icon: Icons.message, title: 'Message'),
        TabItem(icon: Icons.person, title: 'Profile'),
      ],
      backgroundColor: K.whiteColor,
      curveSize: 100,
      color: K.mainColor,
      activeColor: K.blackColor,
      style: TabStyle.react,
      initialActiveIndex: 2,
      //optional, default as 0
      onTap: (int i) => print('click index=$i'),
    ));
  }
}
