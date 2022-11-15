import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rooda_apps/themes/themes.dart';
import 'package:rooda_apps/widgets/motor_card.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: SizedBox(
          width: 40.w,
          height: 40.w,
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Image(
              image: AssetImage('assets/icons/icon_back.png'),
            ),
          ),
        ),
        title: Text(
          'Wishlist',
          style: heading1TextStyle,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: verticalSpaceBig,
          ),
          GridView.count(
            primary: false,
            crossAxisCount: 2,
            mainAxisSpacing: 20.w,
            crossAxisSpacing: 10.w,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            childAspectRatio: 15 / 25,
            children: [
              MotorCard(
                id: 'vespa1',
                title: 'Vespa Primavera',
                desc: 'Lorem Ipsum Dolor sit amet',
                price: 'Rp48.000.000,00',
                imgSrc: 'assets/images/img_motor_vespa.png',
                lihatDetailButton: () {},
                addButton: () {},
                // withSpace: false,
              ),
              MotorCard(
                id: 'vespa1',
                title: 'Vespa Primavera',
                desc: 'Lorem Ipsum Dolor sit amet',
                price: 'Rp48.000.000,00',
                imgSrc: 'assets/images/img_motor_vespa.png',
                lihatDetailButton: () {},
                addButton: () {},
                // withSpace: false,
              ),
              MotorCard(
                id: 'vespa1',
                title: 'Vespa Primavera',
                desc: 'Lorem Ipsum Dolor sit amet',
                price: 'Rp48.000.000,00',
                imgSrc: 'assets/images/img_motor_vespa.png',
                lihatDetailButton: () {},
                addButton: () {},
                // withSpace: false,
              ),
              MotorCard(
                id: 'vespa1',
                title: 'Vespa Primavera',
                desc: 'Lorem Ipsum Dolor sit amet',
                price: 'Rp48.000.000,00',
                imgSrc: 'assets/images/img_motor_vespa.png',
                lihatDetailButton: () {},
                addButton: () {},
                // withSpace: false,
              ),
            ],
          ),
          SizedBox(
            height: 100.w,
          ),
        ],
      ),
    );
  }
}
