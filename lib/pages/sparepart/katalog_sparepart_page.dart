import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rooda_apps/themes/themes.dart';
import 'package:rooda_apps/widgets/search_bar.dart';

class KatalogSparepartPage extends StatelessWidget {
  const KatalogSparepartPage({super.key});

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
          'Katalog Spare Part',
          style: heading1TextStyle,
        ),
      ),
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 100.h,
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
                  SparepartCard(
                    sparePartName: 'Rantai',
                    motorName: 'CBR 150R',
                    price: 'Rp150.000,00',
                    imgSrc: 'assets/images/img_sparepart_rantai.png',
                  ),
                  SparepartCard(
                    sparePartName: 'Rantai',
                    motorName: 'CBR 150R',
                    price: 'Rp150.000,00',
                    imgSrc: 'assets/images/img_sparepart_rantai.png',
                  ),
                  SparepartCard(
                    sparePartName: 'Rantai',
                    motorName: 'CBR 150R',
                    price: 'Rp150.000,00',
                    imgSrc: 'assets/images/img_sparepart_rantai.png',
                  ),
                  SparepartCard(
                    sparePartName: 'Rantai',
                    motorName: 'CBR 150R',
                    price: 'Rp150.000,00',
                    imgSrc: 'assets/images/img_sparepart_rantai.png',
                  ),
                  SparepartCard(
                    sparePartName: 'Rantai',
                    motorName: 'CBR 150R',
                    price: 'Rp150.000,00',
                    imgSrc: 'assets/images/img_sparepart_rantai.png',
                  ),
                  SparepartCard(
                    sparePartName: 'Rantai',
                    motorName: 'CBR 150R',
                    price: 'Rp150.000,00',
                    imgSrc: 'assets/images/img_sparepart_rantai.png',
                  ),
                  SparepartCard(
                    sparePartName: 'Rantai',
                    motorName: 'CBR 150R',
                    price: 'Rp150.000,00',
                    imgSrc: 'assets/images/img_sparepart_rantai.png',
                  ),
                ],
              ),
              SizedBox(
                height: 100.w,
              ),
            ],
          ),
          Container(
            height: 70.w,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SearchBar(
                  hintText: 'Coba "Rantai"',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SparepartCard extends StatelessWidget {
  SparepartCard({
    Key? key,
    required this.sparePartName,
    required this.motorName,
    required this.price,
    required this.imgSrc,
  }) : super(key: key);

  String sparePartName, motorName, price, imgSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 250.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: darkColor.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 150.w,
            height: 150.w,
            child: Image(
              image: AssetImage(
                imgSrc,
              ),
            ),
          ),
          Container(
            width: 150.w,
            height: 100.w,
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              border: Border.all(width: 0, color: primaryColor),
              color: secondaryColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sparePartName,
                  style: heading2TextStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  motorName,
                  style: heading3TextStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  price,
                  style: normalTextStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
