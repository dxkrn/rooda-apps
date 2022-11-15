import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rooda_apps/controllers/spesifikasi_more_controller.dart';
import 'package:rooda_apps/themes/themes.dart';
import 'package:rooda_apps/widgets/custom_button.dart';

class DetailMotorPage extends StatefulWidget {
  const DetailMotorPage({super.key});

  @override
  State<DetailMotorPage> createState() => _DetailMotorPageState();
}

class _DetailMotorPageState extends State<DetailMotorPage> {
  //NOTE : Spesifikasi More Controller
  final SpesifikasiMoreController spesifikasiMoreController =
      Get.put(SpesifikasiMoreController());
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
          'Katalog Motor',
          style: heading1TextStyle,
        ),
      ),
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 225.w,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.r),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: Obx(
                          () => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Vespa Primavera',
                                style: heading1TextStyle.copyWith(
                                    color: darkColor),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',
                                style:
                                    normalTextStyle.copyWith(color: darkColor),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: verticalSpaceSmall,
                              ),
                              spesifikasiMoreController.isExpanded.value
                                  ? Container(
                                      width: deviceWidth - 48.w,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.w, vertical: 12.w),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border: Border.all(
                                          width: 1,
                                          color: darkColor,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              spesifikasiMoreController
                                                      .isExpanded.value =
                                                  !spesifikasiMoreController
                                                      .isExpanded.value;
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Spesifikasi',
                                                  style: heading3TextStyle
                                                      .copyWith(
                                                          color: darkColor),
                                                ),
                                                SizedBox(
                                                  width: 24.w,
                                                  height: 24.w,
                                                  child: const Image(
                                                    image: AssetImage(
                                                      'assets/icons/icon_arrow_up.png',
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: verticalSpaceSmall,
                                          ),
                                          Divider(
                                            color: darkColor,
                                            height: 1,
                                            thickness: 1,
                                          ),
                                          SizedBox(
                                            height: verticalSpaceSmall,
                                          ),
                                          SpesifikasiRow(
                                            title: 'Tipe Mesin',
                                            value: 'SOHC',
                                          ),
                                          SpesifikasiRow(
                                            title: 'Volume Silinder',
                                            value: '125 CC',
                                          ),
                                          SpesifikasiRow(
                                            title: 'Tipe Transmisi',
                                            value: 'Automatic',
                                          ),
                                          SpesifikasiRow(
                                            title: 'Kapasitas BBM',
                                            value: '4.0 L',
                                          ),
                                        ],
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        spesifikasiMoreController
                                                .isExpanded.value =
                                            !spesifikasiMoreController
                                                .isExpanded.value;
                                      },
                                      child: Container(
                                        height: 50.w,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15.w),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          border: Border.all(
                                            width: 1,
                                            color: darkColor,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Spesifikasi',
                                              style: heading3TextStyle.copyWith(
                                                  color: darkColor),
                                            ),
                                            SizedBox(
                                              width: 24.w,
                                              height: 24.w,
                                              child: const Image(
                                                image: AssetImage(
                                                  'assets/icons/icon_arrow_down.png',
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                              SizedBox(
                                height: verticalSpaceSmall,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rp48.000.000,00',
                                    style: heading2TextStyle.copyWith(
                                        color: darkColor),
                                  ),
                                  Text(
                                    '10 Stock',
                                    style: heading3TextStyle.copyWith(
                                        color: darkColor),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                '*pesan sekarang, cukup DP 10%',
                                style:
                                    normalTextStyle.copyWith(color: darkColor),
                              ),
                              SizedBox(
                                height: 100.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // color: darkColor.withAlpha(80),
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    alignment: Alignment.bottomCenter,
                    width: deviceWidth,
                    height: 250.w,
                    child: Image(
                      image: AssetImage(
                        'assets/images/img_motor_vespa.png',
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 24.w,
            child: Container(
              width: deviceWidth,
              alignment: Alignment.center,
              child: CustomButton(
                width: 210.w,
                margin: 0.w,
                title: 'Pesan Sekarang',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SpesifikasiRow extends StatelessWidget {
  SpesifikasiRow({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);
  String title, value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: normalTextStyle.copyWith(color: darkColor),
          ),
          SizedBox(
            width: 150.w,
            child: Text(
              value,
              style: heading3TextStyle.copyWith(
                color: darkColor,
              ),
              textAlign: TextAlign.right,
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
