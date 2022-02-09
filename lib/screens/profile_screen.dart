import 'package:apex/component/appbar.dart';
import 'package:apex/constant.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'checkout_screens/pyment_screen.dart';
import 'order_screens/address_screen.dart';
import 'order_screens/order_history.dart';

class ProfileScreen extends StatelessWidget {
   const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const CustomAppBar(
         actions: [],),
      body: Container(
        height: height,
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
                      aspectRatio: (130 / 53),
                      child: Container()),
                  Positioned(
                    // top: 40,
                    right: width * 0.35,
                     top: height * 0.02,
                    bottom: 10,
                    // right: 150,
                    child: Stack(
                      children: [
                          CircleAvatar(
                          radius: 66,
                          backgroundColor: K.grayColor.withOpacity(.5),
                         child:  Padding(
                           padding: EdgeInsets.symmetric
                             (horizontal: 3.0.w ,vertical: 3.0.h),
                           child: const CircleAvatar(
                                 radius: 100 - 2 * 20,
                                 backgroundImage: NetworkImage(
                                     "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg")
                              ),
                            ),
                         ),
                        Positioned(
                          child: IconButton(
                              onPressed: () {},
                              icon:  Icon(
                                EvaIcons.camera,
                                size: 15.sp,
                                color: K.mainColor,
                              )),
                          // top:70,
                          top: height * 0.1,
                          right: 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
               Text('Caroline John',softWrap: true,style: TextStyle(
                  color: K.blackColor,
                  fontFamily: 'Poppins-Bold',
                fontSize: 8.sp
                ),
              ), Text('johnmatilda@gmail.com \n',softWrap: true,style: TextStyle(
                  color: K.grayColor.withOpacity(.4),
                fontWeight: FontWeight.bold,
                fontSize: 6.sp
                ),
              ),
              Container(
                height:height,
                  width: double.infinity,
                  margin:  EdgeInsets.symmetric
                    (horizontal: 4.0.w ,),
                padding: EdgeInsets.symmetric
                  (horizontal: 1.0.w ,vertical: 30.0.h),
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
                    Container(
                      margin: EdgeInsets.symmetric
                        (horizontal: 2.0.w ,),
                      height: 130.h,
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
                              const Icon(Icons.shopping_bag_outlined  ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:    [
                                  K.sizedBoxH,
                                  Text('My Orders', maxLines: 1,style: TextStyle(fontSize: 6.sp,fontWeight: FontWeight.w600,height: 1),),
                                  Text('Already have 12 orders', style: TextStyle(fontSize: 5.sp,color: Colors.grey ,fontWeight: FontWeight.w600,height: 2),),
                                ],
                              ),
                               Icon(Icons.arrow_forward_ios_rounded ,size: 7.sp,),
                              K.sizedBoxW,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric
                        (horizontal: 2.0.w ,),
                      height: 130.h,
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
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                             K.sizedBoxW,
                              Icon(Icons.payment ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:    [
                                K.sizedBoxH,
                              Text('Payment Methods', style: TextStyle(fontSize: 6.sp),),
                                Text('Visa **43', style: TextStyle(fontSize:  5.sp,color: Colors.grey ,fontWeight: FontWeight.w600,height: 2),),

                              ]),
                              Icon(Icons.arrow_forward_ios_rounded ,size: 7.sp,),
                              K.sizedBoxW,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric
                        (horizontal: 2.0.w ,),
                      height: 130.h, child: GestureDetector(
                        child: Card(
                          color: Colors.grey.shade200,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              K.sizedBoxW,
                              Icon(Icons.share_location_outlined  ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:    [
                                K.sizedBoxH,
                              Text('Shipping Addresses', style: TextStyle(fontSize: 6.sp),),
                              Text('3 addresses', style: TextStyle(fontSize:  5.sp,color: Colors.grey ,fontWeight: FontWeight.w600,height: 2),),
                              ],
                            ),
                              Icon(Icons.arrow_forward_ios_rounded ,size: 7.sp,),
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
                      margin: EdgeInsets.symmetric
                        (horizontal: 2.0.w ,),
                      height: 120.h,   child: Card(
                        color: Colors.grey.shade200,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            K.sizedBoxW,
                            const Icon(Icons.favorite_border_outlined , ),
                            // K.sizedBoxW,
                            Text('My Wishlist', style: TextStyle(fontSize:6.sp),),
                            K.sizedBoxW,
                            Icon(Icons.arrow_forward_ios_rounded ,size: 7.sp,),
                            K.sizedBoxW,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric
                        (horizontal: 2.0.w ,),
                      height: 120.h, child: Card(
                        color: Colors.grey.shade200,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            K.sizedBoxW,
                            Icon(Icons.lock_outline  ),

                            Text('Change Password', style:  TextStyle(fontSize: 6.sp),),
                            K.sizedBoxW,
                            Icon(Icons.arrow_forward_ios_rounded ,size: 7.sp),
                            K.sizedBoxW,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric
                        (horizontal: 2.0.w ,),
                      height: 100.h, child: Card(
                        color: Colors.grey.shade200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            K.sizedBoxW,
                            Icon(Icons.logout),
                             Text('Log Out ', style: TextStyle(fontSize:6.sp),),
                            K.sizedBoxW,
                            Icon(Icons.arrow_forward_ios_rounded , size: 7.sp,),
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
