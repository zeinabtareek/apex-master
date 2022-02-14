import 'package:apex/controller/base_controller.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  final _selectIndex = 0.obs;

  int get selectIndex => _selectIndex.value;

  select(int index) {
    _selectIndex.value = index;
  }
}
