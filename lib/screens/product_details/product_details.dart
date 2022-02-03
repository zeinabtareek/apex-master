import 'package:apex/component/add_button.dart';
import 'package:apex/constant.dart';
import 'package:apex/screens/product_details/controller/product_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../data.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductDetailsController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: K.width,
            height: K.height/1.5,
            child: Stack(
              children: [
                PageView.builder(
                  controller: controller.boardController,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Image.network(
                    controller.labels[index],
                    height: double.infinity,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  itemCount: controller.labels.length,
                  onPageChanged: (int index) {
                    controller.isFirstFunction(index);
                    controller.isLastFunction(index);
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SmoothPageIndicator(
                      controller: controller.boardController,
                      count: controller.labels.length,
                      effect: const WormEffect(
                          dotHeight: 10,
                          dotWidth: 13,
                          activeDotColor: K.mainColor,
                          dotColor: K.whiteColor), // your preferred effect
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Classic Hoodie',
                          style: TextStyle(
                            fontSize: 16,
                            color: K.blackColor,
                            fontFamily: "Poppins-Bold",
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const Icon(
                          Icons.star,
                          // Icons.star_border_outlined,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Text(' 4.7',
                            style:
                                TextStyle(color: Colors.black.withOpacity(.6))),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.share,
                          color: K.grayColor,
                        ),
                        K.sizedBoxW,
                        Icon(
                          Icons.favorite_border_outlined,
                          color: K.grayColor,
                        ),
                      ],
                    ),
                  ],
                ),
                const Text(
                  'Boomboogie',
                  style: TextStyle(
                    color: K.grayColor,
                    fontSize: 14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Description\n',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.6),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
                const Text(
                  'The Under Armour Mens Rival Cotton Sweatshirt delivers comfortable, casual winter comfort. Constructed from mid-weight performance cotton a brushed fleece interior it delivers a warm and cosy fit that  sure to keep your body temps ',
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                  ),
                ),
                K.sizedBoxH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Colors',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontFamily: "Poppins-Bold",
                          ),
                        ),
                        Row(children: [
                          SizedBox(
                            height: 25,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 4,
                              itemBuilder: (ctx, index) => Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: ColosList[index],
                                    borderRadius: BorderRadius.circular(100.0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 4.0,
                                        spreadRadius: 0.0,
                                        offset: Offset(.5,
                                            .5), // shadow direction: bottom right
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ])
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Price',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins SemiBold",
                          ),
                        ),
                        Text(
                          '\$75.00 ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                K.sizedBoxH,
              ],
            ),
          ),
          Center(
            child: AddButton(
              text: 'Add to cart',
              onPressed: () {},
            ),
          ),
        ],
      ),
    ));
  }
}
