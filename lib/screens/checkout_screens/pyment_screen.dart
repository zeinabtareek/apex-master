import 'package:apex/component/add_button.dart';
import 'package:apex/component/appbar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';
import 'cart_screen.dart';
import 'checkout_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {
          Get.back();
        },
        actions: [
          IconButton(
            onPressed: () {},
            icon: IconButton(
                icon: const Icon(
                  EvaIcons.homeOutline,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {}),
          ),
          K.sizedBoxW,
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Checkout',
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
              ),
              K.sizedBoxH,
              Text(
                'Payment Methods , multiple options to select what seems compatible for you',
                style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(color: K.blackColor),
                ),
              ),
              Text(
                '\nChoose your payment method',
                style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(color: K.grayColor),
                ),
              ),
              K.sizedBoxH,
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                title: Wrap(
                  children: [
                    Image.network(
                      'https://www.pngkey.com/png/full/428-4285586_cash-on-delivery-sketch.png',
                      color: Color(0xFF0D47A1),
                      width: 50,
                      height: 50,
                    ),
                    Text(
                      '\nCash on Delivery',
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                              color: K.blackColor.withOpacity(.8),
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
                leading: Radio(
                  value: 1,
                  onChanged: (value) {},
                  groupValue: 4,
                ),
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xFF0D47A1).withOpacity(.4)),
                  borderRadius: new BorderRadius.all(new Radius.circular(40)),
                ),
                title: Image.network(
                  'https://www.pngplay.com/wp-content/uploads/8/Paypal-PNG-Clipart-Background.png',
                  height: 60,
                  alignment: Alignment.bottomLeft,
                ),
                leading: Radio(
                  value: 1,
                  onChanged: (value) {},
                  groupValue: 4,
                ),
              ),
              ListTile(
                title: Image.network(
                  'https://1.bp.blogspot.com/-Hj5-4vRYr7I/X40CjsbIDYI/AAAAAAAAUX4/U3Fv3eOZDVEQSRlwqH17gnbJBSsQh3dgQCLcBGAsYHQ/s2048/visa2.png',
                  height: 60,
                  alignment: Alignment.bottomLeft,
                ),
                leading: Radio(
                  value: 1,
                  onChanged: (value) {},
                  groupValue: 4,
                ),
              ),              K.sizedBoxH,

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children:  [
              //     Text(
              //       'Sub Total',
              //       style: GoogleFonts.aBeeZee(
              //         textStyle: TextStyle(color: K.grayColor),
              //       ),
              //     ),
              //     Text(
              //       '\$360.00',
              //       style: TextStyle(
              //           // fontWeight: FontWeight.bold,
              //           fontSize: 15,
              //           color: K.grayColor),
              //     ),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children:  [
              //     Text('Shipping',
              //       style: GoogleFonts.aBeeZee(
              //         textStyle: TextStyle(color: K.grayColor),
              //       ),
              //     ),
              //     Text('\$40.00',
              //         style: TextStyle(
              //             fontSize: 15,
              //             color: K.grayColor,
              //             height: 2)),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children:  [
              //     Text(
              //       'Total',
              //       style: GoogleFonts.aBeeZee(
              //         textStyle: TextStyle(color: K.blackColor,
              //           fontWeight: FontWeight.bold,
              //
              //         ),
              //       ),
              //       ),
              //     Text(
              //       '\$400.00',
              //       style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           fontSize: 16,
              //           color: K.blackColor,
              //           height: 3),
              //     ),
              //   ],
              // ),
              Center(
                child: AddButton(text: 'Continue to Checkout', onPressed: () {Get.to(CheckOutScreen());}),),
              K.sizedBoxH,
              Center(child:GestureDetector(child: const Text('Go back to review the Cart' ,style: TextStyle(color: K.grayColor,decoration: TextDecoration.underline),),onTap: (){Get.to(CartScreen());},))
            ],
          ),
        ),
      ),
    );
  }
}
