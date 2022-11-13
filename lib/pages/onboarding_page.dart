import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:rooda_apps/themes/themes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = LiquidController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            liquidController: controller,
            pages: [
              SinglePage(
                controller: controller,
                text: 'Temukan motor impianmu hanya\ndalam satu aplikasi',
                imgSrc: 'assets/images/img_ill_1.png',
              ),
              SinglePage(
                controller: controller,
                text: 'Lacak riwayat pembelian dan servis\nmotor kesayanganmu',
                imgSrc: 'assets/images/img_ill_2.png',
              ),
              SinglePage(
                controller: controller,
                text: 'Booking servis dan tanyakan keluhanmu\nvia Call Center',
                imgSrc: 'assets/images/img_ill_3.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SinglePage extends StatelessWidget {
  SinglePage({
    Key? key,
    required this.controller,
    required this.text,
    required this.imgSrc,
  }) : super(key: key);

  final LiquidController controller;
  String text;
  String imgSrc;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: bgColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 320.w,
                  child: Image(
                    image: AssetImage(imgSrc),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 320.w,
                  child: Text(
                    text,
                    style: normalTextStyle.copyWith(
                      color: darkColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),

        //indicator
        Positioned(
          bottom: 25.h,
          left: 30.w,
          right: 30.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: (() {
                  Get.offNamed("/");
                }),
                child: Text(
                  'Skip',
                  style: heading3TextStyle.copyWith(
                    color: darkColor,
                  ),
                ),
              ),
              AnimatedSmoothIndicator(
                activeIndex: controller.currentPage,
                count: 3,
                effect: WormEffect(
                  spacing: 16.w,
                  dotColor: primaryColor,
                  activeDotColor: darkColor,
                ),
                onDotClicked: (index) {
                  controller.jumpToPage(
                    page: index,
                  );
                },
              ),
              controller.currentPage == 2
                  ? TextButton(
                      onPressed: (() {
                        controller.animateToPage(
                            page: controller.currentPage + 1);
                        final box = GetStorage();
                        if (controller.currentPage == 2) {
                          Get.offNamed("/");
                          box.write("finish-onboard", "true");
                        }
                      }),
                      child: Text(
                        "Let's Go",
                        style: heading3TextStyle.copyWith(
                          color: darkColor,
                        ),
                      ),
                    )
                  : TextButton(
                      onPressed: (() {
                        controller.animateToPage(
                            page: controller.currentPage + 1);
                      }),
                      child: Text(
                        'Next',
                        style: heading3TextStyle.copyWith(
                          color: darkColor,
                        ),
                      ),
                    )
            ],
          ),
        )
      ],
    );
  }
}
