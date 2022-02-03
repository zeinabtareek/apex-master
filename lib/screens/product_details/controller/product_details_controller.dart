import 'package:apex/controller/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsController extends BaseController {
  final boardController = PageController();
  final isLast = false.obs;
  final isFirst = true.obs;
  final check = false.obs;
  final List<String> labels = [
    'https://marcqa.com/wp-content/uploads/2022/01/z-HC2027-on_model-standard_view.jpg',
    'https://marcqa.com/wp-content/uploads/2022/01/z-HC2027-on_model-side_view.jpg',
    'https://marcqa.com/wp-content/uploads/2022/01/z-HC2027-on_model-back_view.jpg',
    'https://marcqa.com/wp-content/uploads/2022/01/z-HC2027-on_model-detail_view_1.jpg',
    'https://marcqa.com/wp-content/uploads/2022/01/z-HC2027-on_model-detail_view_2.jpg',
    'https://marcqa.com/wp-content/uploads/2022/01/z-HC2027-on_model-detail_view_3.jpg',
  ];

  isLastFunction(int index) {
    if (index == labels.length - 1) {
      isLast.value = true;
    } else {
      isLast.value = false;
    }
  }

  isFirstFunction(int index) {
    if (index == labels.length - 4) {
      isFirst.value = true;
    } else {
      isFirst.value = false;
    }
  }

  checkFun() {
    check.value = !check.value;
  }

  @override
  void onInit() {
    super.onInit();
    isFirstFunction(0);
  }
}
