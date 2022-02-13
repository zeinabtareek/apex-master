import 'package:apex/component/appbar_home_screen.dart';
import 'package:apex/component/circle_card.dart';
import 'package:apex/component/text_field_search.dart';
import 'package:apex/constant.dart';
import 'package:apex/screens/home_screen/controller/home_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            K.sizedBoxH,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.h, vertical: 15.h),
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
            )
          ],
        ),
      ),
    );
  }
}
