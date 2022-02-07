import 'package:flutter/material.dart';

class ContainerColors extends StatelessWidget {
  const ContainerColors({Key? key, this.color}) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4.0,
              spreadRadius: 0.0,
              offset: Offset(.5, .5), // shadow direction: bottom right
            )
          ],
        ),
      ),
    );
  }
}
