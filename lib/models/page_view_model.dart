import 'package:flutter/material.dart';

class BoardingModel {
  final String? image;

  BoardingModel({this.image});
}

Widget pageViewScreen(BoardingModel model) =>
        Image.network(model.image!
            ,height: 500,
    );
