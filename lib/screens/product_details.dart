import 'package:apex/component/add_button.dart';
import 'package:apex/component/appbar.dart';
import 'package:apex/component/clip_path.dart';
import 'package:get/get.dart';
import 'package:apex/constant.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../data.dart';

class ProductDetails extends StatelessWidget {
  CustomAppBar customAppBar=CustomAppBar( onPressed: () {  }, actions: [],);
  PageController pageController=PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(onPressed: () {  }, actions: [], ),

       body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
        CarouselSlider(

        options: CarouselOptions(
          height: 500,
          viewportFraction: 1,
        ),
        items: imagesList
            .map(
              (item) => ClipRRect(
                    borderRadius:  const BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40),),
                    child: Image.network(item,
                fit: BoxFit.cover,width: double.infinity,
              ),
            ),

        ).toList(),
      ),

                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: SmoothPageIndicator(
                      controller: pageController,
                      count: imagesList.length,
                      effect: const WormEffect(dotHeight: 10 ,dotWidth: 13 ,activeDotColor: K.blackColor ,dotColor: K.grayColor), // your preferred effect
                  ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 6.0, 20.0, 6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Classic Hoodie',
                                style: TextStyle(
                                  fontSize: 18,
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
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.6))),
                            ],
                          ),
                          const Text(
                            'Boomboogie',
                            style: TextStyle(
                              color: K.grayColor,
                              fontSize: 14,
                            ),
                          ),
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
                  K.sizedBoxH,
                  Text(
                    'Description\n',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.6),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 310,
                        child: Text(
                          'The Under Armour Mens Rival Cotton Sweatshirt delivers comfortable, casual winter comfort. Constructed from mid-weight performance cotton a brushed fleece interior it delivers a warm and cosy fit that  sure to keep your body temps ',
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
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
                              fontSize: 16,
                              color: Colors.grey,
                              fontFamily: "Poppins-Bold",
                            ),
                          ),
                          Row(children: [
                            ...List.generate(
                              4,
                              (index) => Wrap(children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color:ColosList[index],
                                    borderRadius: BorderRadius.circular(100.0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 4.0,
                                        spreadRadius: 0.0,
                                        offset: Offset(.5, .5), // shadow direction: bottom right
                                      )
                                    ],),
                                  ),
                                const SizedBox(
                                  width: 8,
                                ),
                               ],
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
                          Text('\$75.00 ',style: TextStyle(color: Colors.black ,fontSize: 30 ,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
              K.sizedBoxH,
                ],
              ),
            ),
            Center(
              child: AddButton(text: 'Add to cart',onPressed: (){},),),
          ],
        ),
     )

    );
  }
}

