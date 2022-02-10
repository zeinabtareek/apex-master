import 'package:apex/component/add_button.dart';
import 'package:apex/component/appbar.dart';
import 'package:apex/screens/order_screens/address_screen.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../constant.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(
        label: "Cart",
        actions: [
          const Icon(
            EvaIcons.shoppingCart,
            color: K.mainColor,
          ),
          SizedBox(width: 6.w),
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
                              height: 180.h,
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
                                      width: 50.w,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                         Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Fashion",
                                            style: TextStyle(
                                                fontSize: 6.sp,
                                                color: K.blackColor,
                                                fontFamily: "Poppins-Bold"),
                                          ),
                                        ),
                                         Padding(
                                          padding:
                                              EdgeInsets.only(left: 20,),
                                          child: Text(
                                            "\$250",
                                            style: TextStyle(
                                                fontSize: 6.sp,
                                                color: K.mainColor,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon:  Icon(
                                                  Icons.remove_circle,
                                                  size: 10.w,
                                                  color: K.mainColor),
                                            ),
                                            const Text(
                                              '2',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            IconButton(
                                              onPressed: () {},
                                              icon:  Icon(
                                                Icons.add_circle,
                                                size: 10.w,
                                                color: K.mainColor,
                                              ),
                                            ),
                                          ],
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
              Padding(
                padding: EdgeInsets.symmetric
                  (horizontal: 8.0.w ,vertical: 8.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      'Sub Total',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 6.sp,
                      ),
                    ),
                    Text(
                      '\$360.00',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 6.sp,
                          color: K.mainColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric
                  (horizontal: 8.0.w ,vertical: 8.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                     Text(
                      'Shipping',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                           fontSize: 6.sp,),
                    ),
                    Text(
                      '\$40.00',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 6.sp,
                          color: K.mainColor,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric
                  (horizontal: 5.0.w ,vertical: 8.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      'Total',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 8.sp,),
                    ),
                    Text(
                      '\$400.00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 6.sp,
                          color: K.mainColor,),
                    ),
                  ],
                ),
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
