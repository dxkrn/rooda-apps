import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:rooda_apps/controllers/bank_more_controller.dart';
import 'package:rooda_apps/themes/themes.dart';
import 'package:rooda_apps/widgets/custom_button.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  //NOTE : Spesifikasi More Controller
  final BankBRIMoreController bankBRIController =
      Get.put(BankBRIMoreController());
  final BankBNIMoreController bankBNIController =
      Get.put(BankBNIMoreController());
  final BankMandiriMoreController bankMandiriController =
      Get.put(BankMandiriMoreController());
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
          'Pesanan',
          style: heading1TextStyle,
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Lottie.asset(
                        'assets/lottie/lottie_payment.json',
                        height: 300.h,
                      ),
                    ),
                    Obx(
                      () => Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 250.h,
                            ),
                            Text(
                              'Rp4.800.000,00',
                              style:
                                  heading1TextStyle.copyWith(color: darkColor),
                            ),
                            SizedBox(
                              height: verticalSpaceBig,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Hore',
                                style: heading3TextStyle.copyWith(
                                    color: darkColor),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Silahkan lakukan pembayaran uang muka sesuai nominal yang tertera dan pesanan Anda akan segera Kami proses.',
                                style:
                                    normalTextStyle.copyWith(color: darkColor),
                              ),
                            ),
                            SizedBox(
                              height: verticalSpaceBig,
                            ),
                            // BankInfo(
                            //   bankMoreController: bankBRIController,
                            //   title: 'Transfer BRI',
                            //   name: 'Rooda Motor',
                            //   rek: '0001-01-211102-10-2',
                            // ),
                            // SizedBox(
                            //   height: verticalSpaceSmall,
                            // ),
                            // BankInfo(
                            //   bankMoreController: bankBNIController,
                            //   title: 'Transfer BNI',
                            //   name: 'Rooda Motor',
                            //   rek: '0210022209',
                            // ),
                            // SizedBox(
                            //   height: verticalSpaceSmall,
                            // ),
                            // BankInfo(
                            //   bankMoreController: bankMandiriController,
                            //   title: 'Transfer Mandiri',
                            //   name: 'Rooda Motor',
                            //   rek: '0220920022102 0210022209',
                            // ),
                            //NOTE : Bank BRI
                            Container(
                              padding:
                                  EdgeInsets.only(bottom: verticalSpaceSmall),
                              child: bankBRIController.isExpanded.value
                                  ? GestureDetector(
                                      onTap: () {
                                        // spesifikasiMoreController.isExpanded.value =
                                        //     !spesifikasiMoreController.isExpanded.value;
                                        bankBRIController.isExpanded.value =
                                            !bankBRIController.isExpanded.value;
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
                                              'Transfer BRI',
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
                                    )
                                  : Container(
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
                                              bankBRIController
                                                      .isExpanded.value =
                                                  !bankBRIController
                                                      .isExpanded.value;
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Transfer BRI',
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
                                                ),
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
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'No. Rekening',
                                                  style:
                                                      normalTextStyle.copyWith(
                                                          color: darkColor),
                                                ),
                                                SizedBox(
                                                  width: 150.w,
                                                  child: Text(
                                                    '0001-01-211102-10-2',
                                                    style: heading3TextStyle
                                                        .copyWith(
                                                      color: darkColor,
                                                    ),
                                                    textAlign: TextAlign.right,
                                                    maxLines: 10,
                                                    // overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Nama',
                                                  style:
                                                      normalTextStyle.copyWith(
                                                          color: darkColor),
                                                ),
                                                SizedBox(
                                                  width: 150.w,
                                                  child: Text(
                                                    'Rooda Motor',
                                                    style: heading3TextStyle
                                                        .copyWith(
                                                      color: darkColor,
                                                    ),
                                                    textAlign: TextAlign.right,
                                                    maxLines: 10,
                                                    // overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                            ),

                            //NOTE : Bank BNI
                            Container(
                              padding:
                                  EdgeInsets.only(bottom: verticalSpaceSmall),
                              child: bankBNIController.isExpanded.value
                                  ? GestureDetector(
                                      onTap: () {
                                        // spesifikasiMoreController.isExpanded.value =
                                        //     !spesifikasiMoreController.isExpanded.value;
                                        bankBNIController.isExpanded.value =
                                            !bankBNIController.isExpanded.value;
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
                                              'Transfer BNI',
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
                                    )
                                  : Container(
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
                                              bankBNIController
                                                      .isExpanded.value =
                                                  !bankBNIController
                                                      .isExpanded.value;
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Transfer BNI',
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
                                                ),
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
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'No. Rekening',
                                                  style:
                                                      normalTextStyle.copyWith(
                                                          color: darkColor),
                                                ),
                                                SizedBox(
                                                  width: 150.w,
                                                  child: Text(
                                                    '0220920022102',
                                                    style: heading3TextStyle
                                                        .copyWith(
                                                      color: darkColor,
                                                    ),
                                                    textAlign: TextAlign.right,
                                                    maxLines: 10,
                                                    // overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Nama',
                                                  style:
                                                      normalTextStyle.copyWith(
                                                          color: darkColor),
                                                ),
                                                SizedBox(
                                                  width: 150.w,
                                                  child: Text(
                                                    'Rooda Motor',
                                                    style: heading3TextStyle
                                                        .copyWith(
                                                      color: darkColor,
                                                    ),
                                                    textAlign: TextAlign.right,
                                                    maxLines: 10,
                                                    // overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                            ),
                            //NOTE : Bank Mandiri
                            Container(
                              padding:
                                  EdgeInsets.only(bottom: verticalSpaceSmall),
                              child: bankMandiriController.isExpanded.value
                                  ? GestureDetector(
                                      onTap: () {
                                        // spesifikasiMoreController.isExpanded.value =
                                        //     !spesifikasiMoreController.isExpanded.value;
                                        bankMandiriController.isExpanded.value =
                                            !bankMandiriController
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
                                              'Transfer Mandiri',
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
                                    )
                                  : Container(
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
                                              bankMandiriController
                                                      .isExpanded.value =
                                                  !bankMandiriController
                                                      .isExpanded.value;
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Transfer Mandiri',
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
                                                ),
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
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'No. Rekening',
                                                  style:
                                                      normalTextStyle.copyWith(
                                                          color: darkColor),
                                                ),
                                                SizedBox(
                                                  width: 150.w,
                                                  child: Text(
                                                    '0210022209',
                                                    style: heading3TextStyle
                                                        .copyWith(
                                                      color: darkColor,
                                                    ),
                                                    textAlign: TextAlign.right,
                                                    maxLines: 10,
                                                    // overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Nama',
                                                  style:
                                                      normalTextStyle.copyWith(
                                                          color: darkColor),
                                                ),
                                                SizedBox(
                                                  width: 150.w,
                                                  child: Text(
                                                    'Rooda Motor',
                                                    style: heading3TextStyle
                                                        .copyWith(
                                                      color: darkColor,
                                                    ),
                                                    textAlign: TextAlign.right,
                                                    maxLines: 10,
                                                    // overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: deviceWidth,
              height: 75.w,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
                color: secondaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Riwayat tapped');
                      Get.toNamed('riwayatTransaksiPage');
                    },
                    child: Text(
                      'Lihat Riwayat',
                      style: heading3TextStyle.copyWith(
                        color: whiteColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  CustomButton(
                    margin: 0,
                    title: 'Unggah Bukti',
                    onTap: () {},
                    width: 150.w,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
