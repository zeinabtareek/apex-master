import 'package:apex/component/appbar.dart';
import 'package:apex/component/buttons_product_screen.dart';
import 'package:apex/component/card_products_screen.dart';
import 'package:apex/data.dart';
import 'package:apex/routes/app_route.dart';
import 'package:apex/screens/product_screen/controller/product_details_controller.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(ProductScreenController());
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          IconButton(
              icon: const Icon(
                EvaIcons.shoppingCartOutline,
                color: K.grayColor,
                size: 30,
              ),
              onPressed: () {
                Get.toNamed(AppRoutes.cartScreen);
              }),
          K.sizedBoxW
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
              child: Text(
                'Products',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
              width: K.width,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _controller.labels.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(
                      () => Buttons(
                        label: _controller.labels[index],
                        color: _controller.selectedIndex.value == index
                            ? K.whiteColor
                            : K.mainColor,
                        colorText: _controller.selectedIndex.value == index
                            ? K.mainColor
                            : K.whiteColor,
                        onTap: () {
                          _controller.selected(index);
                        },
                      ),
                    ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 0,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.8),
                  ),
                  itemCount: _controller.productsText.length,
                  itemBuilder: (BuildContext context, int index) => Obx(
                        () => ProductCard(
                          favouriteFun: () {
                            _controller.checkFun();
                          },
                          images: productsImage[index],
                          iconData: _controller.check.value
                              ? Icons.favorite
                              : Icons.favorite_border,
                          label: _controller.productsText[index],
                          onTap: () {
                            Get.toNamed(AppRoutes.productDetailsScreen);
                          },
                          price: ' \$52.00',
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
