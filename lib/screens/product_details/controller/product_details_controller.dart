import 'package:apex/controller/base_controller.dart';
import 'package:get/get.dart';

class ProductScreenController extends BaseController {
  final List<String> labels = ['see all', 'Bags', 'Women fashion', 'shoes'];
  final List<String> productsText=[
    'Classic Hoodie',
    'Jordan 5 Retro',
    'Buffalo Aspha Rld',
    'Fila Bijou -Women Dresses',
    'adidas Originals Relaxed Risque Lightweight',
    'Nike Bags -Unisex Bags',
    // 'Jordan Flightclub \'91',
    // 'Nike Newborn Coverall ',
    // 'adidas Originals',
    // ' Jordan Sky - Baby Shoes',
    // 'adidas Backpack',
    // 'Nike Futura 365 Mini Backpack',
  ];
  final selectedIndex = 0.obs;

  selected(int index) {
    selectedIndex.value = index;
  }
}
