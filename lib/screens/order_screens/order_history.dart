import 'package:apex/component/appbar.dart';
import 'package:apex/screens/order_screens/order_details.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';
import '../checkout_screens/cart_screen.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {Get.back();}, actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.black,size: 28,),),
        IconButton(onPressed: () {}, icon: IconButton(icon: const Icon(EvaIcons.shoppingCartOutline, color: Colors.black, size: 30,), onPressed: () {Get.to(CartScreen());}),),
        K.sizedBoxW,
      ],),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10.0 ,top: 10.0),
              child: Text('7 items',style: TextStyle(fontSize: 20),),
            ),
            ListView.builder(
              itemCount: 7,
                padding: EdgeInsets.only(left: 11,right: 11,top: 10 ,bottom: 10),
                itemExtent: 150.0,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              itemBuilder: (context ,index){
              return  Wrap(
                alignment: WrapAlignment.start,
                spacing: 15.0, // gap between adjacent chips
                runSpacing: 7.0,
                children: [
                  // K.sizedBoxH,
                  Container(
                    color: K.grayColor.withOpacity(.7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text('#15997',style: TextStyle(fontWeight: FontWeight.w600),),
                        IconButton( icon: Icon(Icons.arrow_right,), onPressed: () { Get.to(OrderDetails()); },),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Order Data',style: TextStyle(color: K.grayColor)),
                      Text('26/06/2019'),
                    ],
                  ),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Status',style: TextStyle(color: K.grayColor),),
                      Text('COMPLETED',style: TextStyle(color: K.mainColor ,fontWeight: FontWeight.w600),),
                    ],
                  ),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Payment Method',style: TextStyle(color: K.grayColor)),
                      Text('Cash on Delivery'),
                    ],
                  ),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Total',style: TextStyle(color: K.grayColor)),
                      Text('\$98.00'),
                    ],
                  ),
                  K.sizedBoxH,
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
