import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rooda_apps/themes/themes.dart';
import 'package:rooda_apps/widgets/custom_button.dart';

class RiwayatPembelianDetailPage extends StatelessWidget {
  const RiwayatPembelianDetailPage({super.key});

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
          'Riwayat Pembelian',
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
                        child: Container(
                          width: deviceWidth - 48.w,
                          margin: EdgeInsets.only(bottom: verticalSpaceBig),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 12.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              width: 1,
                              color: darkColor,
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Detail Transaksi',
                                    style: heading3TextStyle.copyWith(
                                        color: darkColor),
                                  ),
                                ],
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
                              //NOTE : DETAIL ROWS
                              DetailRow(
                                title: 'Pembeli',
                                value: 'Ahmad Subagyo Listyo Rahardi',
                              ),
                              DetailRow(
                                title: 'Alamat',
                                value:
                                    'Jalan Popongan No. 3, Sinduadi, Mlati, Sleman',
                              ),
                              DetailRow(
                                title: 'Motor',
                                value: 'Vespa Primavera',
                              ),
                              DetailRow(
                                title: 'Pemesanan',
                                value: '22-09-2022 10.00',
                              ),
                              DetailRow(
                                title: 'Pelunasan',
                                value: '22-09-2022 13.10',
                              ),
                              DetailRow(
                                title: 'Total',
                                value: 'Rp48.000.000,00',
                              ),
                              DetailRow(
                                title: 'Status',
                                value: 'Lunas',
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
                title: 'Unggah Bukti',
                onTap: () {
                  // Get.toNamed('/inputDataDiriPage');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  DetailRow({
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
              // overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
