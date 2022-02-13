import 'package:apex/controller/base_controller.dart';

class HomeScreenController extends BaseController {
  final List<String> images = [
    "assets/images/fashion.jpeg",
    "assets/images/beauty.jpeg",
    "assets/images/furniture.jpeg",
    "assets/images/device.jpeg",
    "assets/images/wire.jpeg"
  ];
  final List<String> labels = ['Fashion', 'Beauty', 'Furniture', 'Device','Accessories'];
}
