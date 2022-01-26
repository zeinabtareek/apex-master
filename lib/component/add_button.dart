import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class AddButton extends StatelessWidget {
  String ? text;
  final Function()? onPressed;

  AddButton({Key? key,
    required this.text,
    this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child:  Text(text!,
        style: const TextStyle(
          color: K.whiteColor,
          fontSize: 16,
          fontFamily: "Poppins SemiBold",
        ),
      ),
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(290, 40),
          primary:K.blackColor,
          // primary:Color(0xFFF5F5F5),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    );
  }
}
