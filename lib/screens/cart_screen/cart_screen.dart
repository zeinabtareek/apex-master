import 'package:apex/component/add_button.dart';
import 'package:apex/component/appbar.dart';
import 'package:apex/screens/order_screens/address_screen.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import '../../constant.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        label: "Cart",
        actions: [
          Icon(
            EvaIcons.shoppingCart,
            color: K.mainColor,
          ),
          K.sizedBoxW,
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Dismissible(
                          background: Container(
                            color: K.whiteColor,
                            child: const Center(
                              child: Icon(
                                EvaIcons.trash2,
                                color: K.blackColor,
                              ),
                            ),
                          ),
                          key: UniqueKey(),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: K.whiteColor,
                            child: SizedBox(
                              height: 135,
                              width: K.width,
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(2),
                                        topRight: Radius.circular(2)),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      "assets/images/kit.jpg",
                                      fit: BoxFit.cover,
                                      width: 150,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Fashion",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: K.blackColor,
                                                fontFamily: "Poppins-Bold"),
                                          ),
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 10),
                                          child: Text(
                                            "\$250",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: K.mainColor,
                                                fontFamily: "Poppins-Bold"),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.remove_circle,
                                                    size: 30,
                                                    color: K.mainColor),
                                              ),
                                              const Text(
                                                '2',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.add_circle,
                                                  size: 30,
                                                  color: K.mainColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Sub Total',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '\$360.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: K.mainColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Shipping',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18, height: 2),
                  ),
                  Text(
                    '\$40.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: K.mainColor,
                        height: 2),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Total',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20, height: 3),
                  ),
                  Text(
                    '\$400.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: K.mainColor,
                        height: 3),
                  ),
                ],
              ),
              AddButton(
                text: 'Checkout',
                onPressed: () {
                  Get.to(AddressScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
