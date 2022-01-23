import 'package:apex/constant.dart';
import 'package:flutter/material.dart';

class FixedTextField extends StatelessWidget {
  const FixedTextField({Key? key, this.label, this.function}) : super(key: key);
  final String? label;
  final Function(void)? function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextFormField(
        onChanged: function,
        showCursor: true,
        cursorColor: K.mainColor,
        decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(
              label!,
              style: const TextStyle(
                  color: K.grayColor, fontWeight: FontWeight.bold, fontSize: 15),
            ),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: K.grayColor)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: K.borderColor))),
      ),
    );
  }
}
