import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rooda_apps/controllers/riwayat_page_controller.dart';
import 'package:rooda_apps/themes/themes.dart';

final RiwayatPageController riwayatPageController =
    Get.put(RiwayatPageController());

class RiwayatTransaksiPage extends StatelessWidget {
  const RiwayatTransaksiPage({super.key});

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
          'Riwayat Transaksi',
          style: heading1TextStyle,
        ),
      ),
      body: Stack(
        children: [
          //NOTE: List riwayat Transaksi
          Obx(
            () => ListView(
              children: [
                SizedBox(
                  height: 60.h,
                ),
                riwayatPageController.activeIndex.value == 0
                    ? Column(
                        children: [
                          RiwayatPembelianCard(
                            nama: 'Vespa Primavera',
                            harga: 'Rp48.000.000,00',
                            status: 'Belum Bayar',
                          ),
                          RiwayatPembelianCard(
                            nama: 'Vespa Primavera',
                            harga: 'Rp48.000.000,00',
                            status: 'Belum Bayar',
                          ),
                          RiwayatPembelianCard(
                            nama: 'Vespa Primavera',
                            harga: 'Rp48.000.000,00',
                            status: 'Belum Bayar',
                          ),
                          RiwayatPembelianCard(
                            nama: 'Vespa Primavera',
                            harga: 'Rp48.000.000,00',
                            status: 'Belum Bayar',
                          ),
                          RiwayatPembelianCard(
                            nama: 'Vespa Primavera',
                            harga: 'Rp48.000.000,00',
                            status: 'Belum Bayar',
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          RiwayatServisCard(
                            tanggal: '10 November 2022',
                            biaya: 'Rp120.000,00',
                          ),
                          RiwayatServisCard(
                            tanggal: '10 November 2022',
                            biaya: 'Rp120.000,00',
                          ),
                          RiwayatServisCard(
                            tanggal: '10 November 2022',
                            biaya: 'Rp120.000,00',
                          ),
                          RiwayatServisCard(
                            tanggal: '10 November 2022',
                            biaya: 'Rp120.000,00',
                          ),
                          RiwayatServisCard(
                            tanggal: '10 November 2022',
                            biaya: 'Rp120.000,00',
                          ),
                        ],
                      ),
                SizedBox(
                  height: 100.h,
                ),
              ],
            ),
          ),

          //NOTE : Button Pembelian dan Service
          Column(
            children: [
              Container(
                // margin: EdgeInsets.only(top: 20.w),
                height: 50.w,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 5.w),
                color: bgColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RiwayatPageButton(index: 0, title: 'Pembelian'),
                    RiwayatPageButton(index: 1, title: 'Servis'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RiwayatServisCard extends StatelessWidget {
  RiwayatServisCard({
    Key? key,
    required this.tanggal,
    required this.biaya,
  }) : super(key: key);
  String tanggal, biaya;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/riwayatServisDetailPage');
      },
      child: Container(
        width: deviceWidth - 48.w,
        margin: EdgeInsets.only(bottom: verticalSpaceBig),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.w),
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
                  tanggal,
                  style: heading3TextStyle.copyWith(color: darkColor),
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
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total',
                    style: normalTextStyle.copyWith(color: darkColor),
                  ),
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      biaya,
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
            ),
          ],
        ),
      ),
    );
  }
}

class RiwayatPembelianCard extends StatelessWidget {
  RiwayatPembelianCard({
    Key? key,
    required this.nama,
    required this.harga,
    required this.status,
  }) : super(key: key);
  String nama, harga, status;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/riwayatPembelianDetailPage');
      },
      child: Container(
        width: deviceWidth - 48.w,
        margin: EdgeInsets.only(bottom: verticalSpaceBig),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.w),
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
                  nama,
                  style: heading3TextStyle.copyWith(color: darkColor),
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
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Harga',
                    style: normalTextStyle.copyWith(color: darkColor),
                  ),
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      harga,
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
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Status',
                    style: normalTextStyle.copyWith(color: darkColor),
                  ),
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      status,
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
            ),
          ],
        ),
      ),
    );
  }
}

class RiwayatPageButton extends StatefulWidget {
  RiwayatPageButton({
    Key? key,
    required this.index,
    required this.title,
  }) : super(key: key);

  int index;
  String title;

  @override
  State<RiwayatPageButton> createState() => _RiwayatPageButtonState();
}

class _RiwayatPageButtonState extends State<RiwayatPageButton> {
  //NOTE : Kategori Button Controller
  // final RiwayatPageController riwayatPageController =
  //     Get.put(RiwayatPageController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // setState(() {
        //   kategoriActiveIndex = widget.index;
        // });
        riwayatPageController.activeIndex.value = widget.index;
        print('${widget.title} tapped');
      },
      child: Obx(
        () => Container(
          alignment: Alignment.center,
          width: 150.w,
          height: 30.w,
          // margin: EdgeInsets.only(right: 10.w),
          decoration: riwayatPageController.activeIndex.value == widget.index
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: primaryColor,
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: bgColor,
                  border: Border.all(
                    width: 2,
                    color: primaryColor,
                  ),
                ),
          child: riwayatPageController.activeIndex.value == widget.index
              ? Text(
                  widget.title,
                  style: normalTextStyle,
                )
              : Text(
                  widget.title,
                  style: normalTextStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
        ),
      ),
    );
  }
}
