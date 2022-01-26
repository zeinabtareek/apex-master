import 'package:apex/component/add_button.dart';
import 'package:apex/component/appbar.dart';
import 'package:apex/screens/checkout_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import '../constant.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartScreen extends StatelessWidget {
   CartScreen({Key? key}) : super(key: key);
  CustomAppBar customAppBar=CustomAppBar( onPressed: () {  }, actions: [],);
  get doNothing => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onPressed: () {  }, actions: [], ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Cart',
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
              ),
              K.sizedBoxH,
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return  Slidable(
                        actionExtentRatio: 0.25,
                        secondaryActions: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(top: 8.0 ,bottom: 8.0),
                            child: IconSlideAction(
                              caption: 'Delete',
                              color: K.mainColor,
                              icon: Icons.delete,
                              onTap: () {},
                            ),
                          ),
                        ],
                        actionPane: const SlidableDrawerActionPane(),
                        child: SizedBox(
                          // margin: EdgeInsets.only(bottom: 15),
                          height: 150,
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 2,
                            child: Row(
                              children: [
                                Image.network(
                                    'https://marcqa.com/wp-content/uploads/2022/01/z-HC2027-on_model-standard_view.jpg'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: const [
                                        K.sizedBoxH,
                                        Text(
                                          'Harper Fixie Bike ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '\n\$259.99',
                                          style: TextStyle(
                                              color: K.mainColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.remove_circle,
                                        size: 30,
                                        color: Color(
                                          0XFFE0E0E0,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      '2',
                                      style: TextStyle(fontWeight: FontWeight.bold),
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
                              ],
                            ),
                          ),
                        ),
                      );
              }),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Sub Total',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                    Text('\$360.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 ,color: K.mainColor),),
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Shipping',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, height: 2),),
                      Text('\$40.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 ,color: K.mainColor,height: 2),),
                    ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Total',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,height: 3),),
                      Text('\$400.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ,color: K.mainColor,height: 3),),
                    ],),
                ],
              ),
              Center(
                child: AddButton(text: 'Proceed To Checkout',onPressed: (){Get.to(CheckOutScreen());},),),
            ],
          ),
        ),
      ),
    );
  }
}

