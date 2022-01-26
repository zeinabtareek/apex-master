import 'package:apex/component/add_button.dart';
import 'package:apex/component/appbar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../constant.dart';

class CheckOutScreen extends StatelessWidget {
  CustomAppBar customAppBar = CustomAppBar(onPressed: () {}, actions: [],);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {Get.back();}, actions: [],),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Checkout', style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),),
                K.sizedBoxH,
                Stack(
                  children: [
                    SizedBox(
                      height: 250,
                      child: Card(
                        color: K.borderColor,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  K.sizedBoxH,
                                  const Text('Shipping Information', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                                  K.sizedBoxH,
                                  Wrap(children: [Icon(EvaIcons.personOutline, color: Colors.black.withOpacity(.7), size: 25,),
                                      K.sizedBoxW,
                                      Text('Cameron Williamson', style: TextStyle(color: Colors.black.withOpacity(.7), fontSize: 18, fontWeight: FontWeight.w500,))
                                    ],
                                  ),
                                  K.sizedBoxH,
                                  Wrap(
                                    children: [
                                      Icon(
                                        EvaIcons.phoneCallOutline,
                                        color: Colors.black.withOpacity(.7),
                                        size: 25,
                                      ),
                                      K.sizedBoxW,
                                      Text(
                                        '(405) 555-0120 ',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(.7),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                  K.sizedBoxH,
                                  Wrap(
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        color: Colors.black.withOpacity(.7),
                                        size: 25,
                                      ),
                                      K.sizedBoxW,
                                      SizedBox(
                                        width: 300,
                                        child: Text(
                                          ' 8502 Perston Rd.inglewoold Main 98380.dunken St . near to Gazoline berline station',
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(.7),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 325,
                      top: -6,
                      child: FlatButton(
                        color: K.mainColor,
                        shape: CircleBorder(),
                        onPressed: () {},
                        child: const Icon(
                          EvaIcons.edit2Outline,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                K.sizedBoxH,
                Stack(
                  children: [
                    SizedBox(
                      // margin: EdgeInsets.only(bottom: 15),
                      height: 200,
                      child: Card(
                        color: K.mainColor,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  K.sizedBoxH,
                                  const Text(
                                    'Payment',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: K.whiteColor,
                                        fontSize: 25),
                                  ),
                                  K.sizedBoxH,
                                  Wrap(
                                    children: const [
                                      Icon(
                                        EvaIcons.printer,
                                        color: K.whiteColor,
                                        size: 25,
                                      ),
                                      K.sizedBoxW,
                                      Text(
                                        '561056729001767',
                                        style: TextStyle(
                                          color: K.whiteColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                  K.sizedBoxH,
                                  Wrap(
                                    children: const [
                                      Text(
                                        '12 /26',
                                        style: TextStyle(
                                          color: K.whiteColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      K.sizedBoxW,
                                      Text(
                                        '395',
                                        style: TextStyle(
                                          color: K.whiteColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                  K.sizedBoxH,
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 325,
                      top: -6,
                      child: FlatButton(
                        color: K.borderColor,
                        shape: CircleBorder(),
                        onPressed: () {},
                        child: const Icon(
                          EvaIcons.edit2Outline,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                K.sizedBoxH,
                Column(
                  children: [
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
                        Text( 'Shipping', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, height: 2)),
                        Text( '\$40.00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: K.mainColor, height: 2)),
                      ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text( 'Total', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, height: 3),),
                        Text('\$400.00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: K.mainColor, height: 3),),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: AddButton(text: 'Place Order', onPressed: () {Get.to(CheckOutScreen());},),),
              ]
          ),
        ),
      ),
    );
  }
}
