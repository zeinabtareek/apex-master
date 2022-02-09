import 'package:apex/component/appbar.dart';
import 'package:apex/component/buttons_product_screen.dart';
import 'package:apex/component/card_products_screen.dart';
import 'package:apex/data.dart';
import 'package:apex/routes/app_route.dart';
import 'package:apex/screens/product_details/product_details.dart';
import 'package:apex/screens/product_screen/controller/product_details_controller.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                icon:  Icon(
                  EvaIcons.shoppingCartOutline,
                  color: K.grayColor,
                  size: 12.sp,
                ),
                onPressed: () {
                  Get.toNamed(AppRoutes.cartScreen);
                }),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 15.0.h, ),
                child:  Text(
                  'Products',
                  style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 80.h,
                width: K.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _controller.labels.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.0.w, vertical: 8.0.h, ),
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
                padding: EdgeInsets.symmetric(horizontal: 2.0.w, vertical: 8.0.h, ),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 0,
                      childAspectRatio: MediaQuery.of(context).size.width.w /
                          (MediaQuery.of(context).size.height / 1.h),
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
                        ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
