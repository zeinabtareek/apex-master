import 'package:apex/component/appbar_home_screen.dart';
import 'package:apex/component/circle_card.dart';
import 'package:apex/component/offer_card.dart';
import 'package:apex/component/smooth_indicator.dart';
import 'package:apex/component/text_field_search.dart';
import 'package:apex/constant.dart';
import 'package:apex/screens/home_screen/controller/home_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(HomeScreenController());
    return Scaffold(
      appBar: AppBarHomeScreen(
        address: "Alex,Egypt",
      ),
      backgroundColor: K.whiteColor,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          K.sizedBoxH,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.h, vertical: 15.h),
            child: AutoSizeText(
              "What are you looking for",
              style: TextStyle(color: K.blackColor, fontSize: 8.sp),
            ),
          ),
          K.sizedBoxH,
          TextFieldSearch(),
          box(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  "Top Category",
                  style: TextStyle(color: K.blackColor, fontSize: 9.sp),
                ),
                AutoSizeText(
                  "show all",
                  style: TextStyle(color: K.mainColor, fontSize: 6.sp),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250.h,
            child: ListView.builder(
                itemCount: _controller.images.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: ClampingScrollPhysics(),
                itemBuilder: (ctx, index) => CircleCard(
                      onTap: () {},
                      images: _controller.images[index],
                      labels: _controller.labels[index],
                    )),
          ),
          CarouselSlider.builder(
              itemCount: _controller.orders.length,
              carouselController: _controller.controller,
              itemBuilder: (context, index, realIndex) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OfferCards(
                      onTap: () {},
                      images: _controller.orders[index],
                    ),
                  ),
              options: CarouselOptions(
                  height: 300.h,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    print(index);
                    _controller.currentIndex.value = index;
                  })),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _controller.orders.asMap().entries.map((entry) {
              return Obx(
                () => SmoothIndicator(
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : K.mainColor)
                        .withOpacity(
                            _controller.currentIndex == entry.key ? 0.9 : 0.2)),
              );
            }).toList(),
          ),
        ]),
      ),
    );
  }
}

Widget box() => SizedBox(
      height: 60.h,
    );
