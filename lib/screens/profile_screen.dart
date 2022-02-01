import 'package:apex/component/appbar.dart';
import 'package:apex/constant.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'checkout_screens/cart_screen.dart';
import 'checkout_screens/pyment_screen.dart';
import 'order_screens/address_screen.dart';
import 'order_screens/order_history.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);
  CustomAppBar customAppBar = CustomAppBar(onPressed: () {}, actions: [],);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {Get.back();}, actions: [],),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration:  const BoxDecoration(
    image:   DecorationImage(
        image:ExactAssetImage('assets/images/netnetnet.jpeg',),
      fit: BoxFit.cover,    // -> 02
        ),

        ),
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  AspectRatio(
                      aspectRatio: (130 / 50),
                      child: Container()),
                  Positioned(
                    top: 40,
                    bottom: 10,
                    right: 150,
                    child: Stack(
                      children: [
                         const CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.white70,
                         child:  Padding(
                           padding: EdgeInsets.all(8.0),
                           child: CircleAvatar(
                                 radius: 100 - 2 * 20,
                                 backgroundImage: NetworkImage(
                                     "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg")
                              ),
                            ),
                         ),
                        Positioned(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                EvaIcons.camera,
                                size: 30,
                                color: K.whiteColor,
                              )),
                          top:70,
                          right: 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Text('Caroline John',softWrap: true,style: TextStyle(
                  color: K.whiteColor,
                  fontFamily: 'Poppins-Bold',
                fontSize: 22
                ),
              ), Text('johnmatilda@gmail.com \n',softWrap: true,style: TextStyle(
                  color: K.whiteColor.withOpacity(.8),
                fontWeight: FontWeight.bold,
                fontSize: 16
                ),
              ),
              Container(
                height:MediaQuery.of(context).size.height,
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  decoration:   BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 2,
                        blurRadius: 9,
                        offset: const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(60.0),
                        topLeft: Radius.circular(60.0)),
                  ),
                child: Column(
                  children:  [
                    K.sizedBoxH,
                    // K.sizedBoxH,
                    Container(
                      margin: const EdgeInsets.only(left :11 ,right: 11),
                      height: 80,
                      child: GestureDetector(
                        onTap: (){
                          Get.to(OrderHistory());
                        },
                        child: Card(
                          color: Colors.grey.shade200,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:  [
                              K.sizedBoxW,
                              Icon(Icons.shopping_bag_outlined ,size: 30,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:   const [
                                  K.sizedBoxH,
                                  Text('My Orders', maxLines: 1,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,height: 1),),
                                  Text('Already have 12 orders', style: TextStyle(fontSize: 12,color: Colors.grey ,fontWeight: FontWeight.w600,height: 2),),
                                ],
                              ),
                              const Icon(Icons.arrow_forward_ios_rounded ,size: 20,),
                              K.sizedBoxW,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all( 11),
                      height: 80,
                      child: GestureDetector(
                        onTap: (){Get.to(PaymentScreen());},
                        child: Card(
                          color: Colors.grey.shade200,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                             K.sizedBoxW,
                              Icon(Icons.payment,size: 30,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:   const [
                                K.sizedBoxH,
                              Text('Payment Methods', style: TextStyle(fontSize: 17),),
                                Text('Visa **43', style: TextStyle(fontSize: 12,color: Colors.grey ,fontWeight: FontWeight.w600,height: 2),),

                              ]),
                              Icon(Icons.arrow_forward_ios_rounded ,size: 20,),
                              K.sizedBoxW,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left :11 ,right: 11),
                      height: 80,
                      child: GestureDetector(
                        child: Card(
                          color: Colors.grey.shade200,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              K.sizedBoxW,
                              Icon(Icons.share_location_outlined ,size: 32,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:   const [
                                K.sizedBoxH,
                              Text('Shipping Addresses', style: TextStyle(fontSize: 17),),
                              Text('3 addresses', style: TextStyle(fontSize: 12,color: Colors.grey ,fontWeight: FontWeight.w600,height: 2),),
                              ],
                            ),
                              Icon(Icons.arrow_forward_ios_rounded ,size: 20,),
                              K.sizedBoxW,
                            ],
                          ),
                        ),
                        onTap: (){
                          Get.to(AddressScreen());
                        },
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(left :11 ,right: 11),
                      height: 70,
                      child: Card(
                        color: Colors.grey.shade200,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            K.sizedBoxW,
                            Icon(Icons.favorite_border_outlined ,size: 30,),
                            K.sizedBoxW,
                            Text('My Wishlist', style: TextStyle(fontSize: 17),),
                            K.sizedBoxW,
                            Icon(Icons.arrow_forward_ios_rounded ,size: 20,),
                            K.sizedBoxW,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left :11 ,right: 11),
                      height: 70,
                      child: Card(
                        color: Colors.grey.shade200,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            K.sizedBoxW,
                            Icon(Icons.lock_outline ,size: 30,),
                            Text('Change Password', style: TextStyle(fontSize: 17),),
                            K.sizedBoxW,
                            Icon(Icons.arrow_forward_ios_rounded ,size: 20,),
                            K.sizedBoxW,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left :11 ,right: 11),
                      height: 65,
                      child: Card(
                        color: Colors.grey.shade200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            K.sizedBoxW,
                            Icon(Icons.logout),
                            Text('Log Out', style: TextStyle(fontSize: 17),),
                            K.sizedBoxW,
                            Icon(Icons.arrow_forward_ios_rounded ,size: 20,),
                            K.sizedBoxW,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
