import 'package:apex/component/appbar.dart';
import 'package:apex/screens/product_details.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../constant.dart';
import '../data.dart';
import 'checkout_screens/cart_screen.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions:  [
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.black,size: 28,),),
              IconButton(onPressed: () {}, icon: IconButton(icon: const Icon(EvaIcons.shoppingCartOutline, color: Colors.black, size: 30,), onPressed: () {Get.to(CartScreen());}),),
          K.sizedBoxW,
            ],
        onPressed: () {},
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
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, bottom: 10, right: 20.0),
              child: Wrap(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All".toUpperCase(),
                      style: const TextStyle(
                        color: K.mainColor,
                        fontSize: 16,
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        K.whiteColor.withOpacity(.3),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: K.mainColor)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Bags".toUpperCase(),
                      style: const TextStyle(
                        color: K.whiteColor,
                        fontSize: 12,
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 5.0),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        K.mainColor,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.white70)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Women's fashion".toUpperCase(),
                      style: const TextStyle(
                        color: K.whiteColor,
                        fontSize: 12,
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 5.0),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        K.mainColor,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.white70)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "shoes".toUpperCase(),
                      style: const TextStyle(
                        color: K.whiteColor,
                        fontSize: 12,
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 5.0),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        K.mainColor,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.white70)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: 11),
              decoration: const BoxDecoration(
                color: K.whiteColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 5,right: 5),
                color: K.whiteColor.withOpacity(.97),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 0,
                    // mainAxisExtent: 400,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.1),

                  ),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector (
                        onTap: (){Get.to(ProductDetails());},
                        child :Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(-1.0),
                        side: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 8.0, // gap between adjacent chips
                        runSpacing: 4.0,
                        children: [
                          Stack(
                            children: [
                              Image.network(
                                productsImage[index],
                                fit: BoxFit.cover,
                                height: 270,
                              ),
                              const Positioned(
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 25,
                                  color: K.grayColor,
                                ),
                                top: 10,
                                right: 4,
                              ),
                            ],
                          ),
                          Text(
                            productsText[index].toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              color: K.blackColor,
                              fontFamily: "Poppins-Bold",
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            ' \$52.00',
                            style: TextStyle(
                              color: K.grayColor,
                              fontSize: 16,
                            ),
                          ),
                          ),
                          const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('In Stock',
                                  style: TextStyle(
                                    color: K.cardColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingBarIndicator(
                                rating: 2.75,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize: 15.0,
                                direction: Axis.horizontal,
                              ),
                              Icon(EvaIcons.shoppingCartOutline),
                            ],
                          ),
                        ],
                       ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
