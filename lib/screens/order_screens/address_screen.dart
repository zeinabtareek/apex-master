import 'package:apex/component/add_button.dart';
import 'package:apex/component/appbar.dart';
import 'package:apex/component/text_field.dart';
import 'package:apex/routes/app_route.dart';
import 'package:apex/screens/checkout_screens/pyment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        label: "Order",
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
            child: Column(
              children: [
                FixedTextField(
                  key: key,
                  label: "First name",
                  function: (v) {},
                ),
                FixedTextField(
                  key: key,
                  label: "Last name",
                  function: (v) {},
                ),
                FixedTextField(
                  key: key,
                  label: "Email name *Optional",
                  function: (v) {},
                ),
                FixedTextField(
                  key: key,
                  label: "Address ",
                  function: (v) {},
                ),
                FixedTextField(
                  key: key,
                  label: "Phone 1",
                  function: (v) {},
                ),
                FixedTextField(
                  key: key,
                  label: "Phone 2 *Optional",
                  function: (v) {},
                ),
                FixedTextField(
                  key: key,
                  label: "Note ",
                  function: (v) {},
                ),
                Center(
                  child: AddButton(
                      text: 'Continue to Payment',
                      onPressed: () {
                        Get.toNamed(AppRoutes.paymentScreen);
                      }),
                ),
              ],
            )
            // Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       // ListTile(
            //       //   selectedTileColor: K.mainColor,
            //       //   enabled: true,
            //       //   leading:TextButton.icon(
            //       //     onPressed: () => showDialog<String>(
            //       //       context: context,
            //       //       builder: (BuildContext context) =>
            //       //           AlertDialog(
            //       //         actions: <Widget>[
            //       //           TextButton(child: const Text('Add'),
            //       //             onPressed: () {
            //       //               Get.back();
            //       //               ScaffoldMessenger.of(context).showSnackBar(
            //       //                   const SnackBar(
            //       //                     content: Text('Category cannot be empty'),));
            //       //             },),
            //       //           TextButton(child: const Text('Cancel'), onPressed: () { Get.back(); },),
            //       //         ],
            //       //         content: TextFormField(
            //       //           controller: categoryController,
            //       //           onChanged: (value) {},
            //       //           decoration: const InputDecoration(
            //       //               hintText: 'add address'
            //       //           ),
            //       //         ),
            //       //       ),
            //       //     ),
            //       //     label: Text( 'Add new Address',),
            //       //     icon: const Icon(
            //       //       Icons.category,
            //       //       color: K.blackColor,
            //       //     ),
            //       //   ),
            //       // ),
            //     ]),
            ),
      ),
    );
  }
}
