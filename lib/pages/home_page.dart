import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rooda_apps/themes/themes.dart';
import 'package:rooda_apps/widgets/custom_navbar.dart';
import 'package:rooda_apps/widgets/motor_card.dart';
import 'package:rooda_apps/widgets/search_bar.dart';

final List<Widget> brandList = [
  BrandCard(
    id: 'vespa',
    imgSrc: 'assets/images/img_motor_vespa.png',
    logoSrc: 'assets/images/img_logo_vespa.png',
    onTap: () {
      print('vespa tapped');
    },
  ),
  BrandCard(
    id: 'vespa',
    imgSrc: 'assets/images/img_motor_yamaha.png',
    logoSrc: 'assets/images/img_logo_yamaha.png',
    onTap: () {
      print('yamaha tapped');
    },
  ),
  BrandCard(
    id: 'vespa',
    imgSrc: 'assets/images/img_motor_honda.png',
    logoSrc: 'assets/images/img_logo_honda.png',
    onTap: () {
      print('honda tapped');
    },
  ),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 120.h,
              child: const Image(
                image: AssetImage(
                  'assets/images/img_logo_rooda.png',
                ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30.r),
                  splashColor: primaryColor.withAlpha(80),
                  child: SizedBox(
                    width: 24.w,
                    height: 24.w,
                    child: const Image(
                      image: AssetImage(
                        'assets/icons/icon_notif.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30.r),
                  splashColor: primaryColor.withAlpha(80),
                  child: SizedBox(
                    width: 24.w,
                    height: 24.w,
                    child: const Image(
                      image: AssetImage(
                        'assets/icons/icon_more.png',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomNavbar(),
      body: SafeArea(
        child: Container(
          color: primaryColor,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: deviceWidth,
                        height: 260.h,
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100.r),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth,
                        height: 260.h,
                        // color: secondaryColor.withAlpha(80),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CarouselSlider(
                              items: brandList,
                              carouselController: _controller,
                              options: CarouselOptions(
                                  autoPlay: true,
                                  // enlargeCenterPage: true,
                                  aspectRatio: 2.0,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current = index;
                                    });
                                  }),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            //NOTE : FEatured Indicator
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: brandList.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () =>
                                      _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 12.0,
                                    height: 12.0,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _current == entry.key
                                          ? primaryColor
                                          : secondaryColor,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: verticalSpaceSmall,
                  ),
                  SearchBar(
                    hintText: 'Coba "Vario"',
                    onTap: () {
                      print('search tapped');
                    },
                  ),
                  SizedBox(
                    height: verticalSpaceBig,
                  ),
                  KategoriTitle(title: 'Tipe'),
                  SizedBox(
                    height: 130.w,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        SizedBox(
                          width: 24.w,
                        ),
                        KategoriCard(
                          title: 'Matic',
                          imgSrc: 'assets/images/img_kategori_matic.png',
                          onTap: () {},
                        ),
                        KategoriCard(
                          title: 'Cub',
                          imgSrc: 'assets/images/img_kategori_cub.png',
                          onTap: () {},
                        ),
                        KategoriCard(
                          title: 'Sport',
                          imgSrc: 'assets/images/img_kategori_sport.png',
                          onTap: () {},
                        ),
                        KategoriCard(
                          title: 'Naked',
                          imgSrc: 'assets/images/img_kategori_naked.png',
                          onTap: () {},
                        ),
                        KategoriCard(
                          title: 'Offroad',
                          imgSrc: 'assets/images/img_kategori_offroad.png',
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: verticalSpaceSmall,
                  ),
                  KategoriTitle(
                    title: 'Populer',
                    withLihatSemua: true,
                  ),
                  SizedBox(
                    height: 250.w,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 24.w,
                            ),
                            MotorCard(
                              id: 'vespa1',
                              title: 'Vespa Primavera',
                              desc: 'Lorem Ipsum Dolor sit amet',
                              price: 'Rp48.000.000,00',
                              imgSrc: 'assets/images/img_motor_vespa.png',
                              lihatDetailButton: () {
                                Get.toNamed('/detailMotorPage');
                              },
                              addButton: () {},
                              withSpace: true,
                            ),
                            MotorCard(
                              id: 'vespa1',
                              title: 'Vespa Primavera',
                              desc: 'Lorem Ipsum Dolor sit amet',
                              price: 'Rp48.000.000,00',
                              imgSrc: 'assets/images/img_motor_vespa.png',
                              lihatDetailButton: () {
                                Get.toNamed('/detailMotorPage');
                              },
                              addButton: () {},
                              withSpace: true,
                            ),
                            MotorCard(
                              id: 'vespa1',
                              title: 'Vespa Primavera',
                              desc: 'Lorem Ipsum Dolor sit amet',
                              price: 'Rp48.000.000,00',
                              imgSrc: 'assets/images/img_motor_vespa.png',
                              lihatDetailButton: () {
                                Get.toNamed('/detailMotorPage');
                              },
                              addButton: () {},
                              withSpace: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: verticalSpaceBig,
                  ),
                  KategoriTitle(
                    title: 'Termurah',
                    withLihatSemua: true,
                  ),
                  SizedBox(
                    height: 250.w,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 24.w,
                            ),
                            MotorCard(
                              id: 'vespa1',
                              title: 'Vespa Primavera',
                              desc: 'Lorem Ipsum Dolor sit amet',
                              price: 'Rp48.000.000,00',
                              imgSrc: 'assets/images/img_motor_vespa.png',
                              lihatDetailButton: () {},
                              addButton: () {},
                              withSpace: true,
                            ),
                            MotorCard(
                              id: 'vespa1',
                              title: 'Vespa Primavera',
                              desc: 'Lorem Ipsum Dolor sit amet',
                              price: 'Rp48.000.000,00',
                              imgSrc: 'assets/images/img_motor_vespa.png',
                              lihatDetailButton: () {},
                              addButton: () {},
                              withSpace: true,
                            ),
                            MotorCard(
                              id: 'vespa1',
                              title: 'Vespa Primavera',
                              desc: 'Lorem Ipsum Dolor sit amet',
                              price: 'Rp48.000.000,00',
                              imgSrc: 'assets/images/img_motor_vespa.png',
                              lihatDetailButton: () {},
                              addButton: () {},
                              withSpace: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: verticalSpaceBig,
                  ),
                  KategoriTitle(title: 'Spare Part'),
                  Row(
                    children: [
                      SizedBox(
                        width: 24.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Banner Sparepart Tapped');
                        },
                        child: Container(
                          width: deviceWidth - 48.w,
                          height: 105.w,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20.r),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/img_sparepart_banner.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: verticalSpaceBig,
                  ),
                  KategoriTitle(title: 'Informasi'),
                  Row(
                    children: [
                      SizedBox(
                        width: 24.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Banner Informasi Tapped');
                        },
                        child: Container(
                          width: deviceWidth - 48.w,
                          height: 140.w,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20.r),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/img_informasi_banner.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KategoriCard extends StatelessWidget {
  KategoriCard({
    Key? key,
    required this.title,
    required this.imgSrc,
    required this.onTap,
  }) : super(key: key);
  String title, imgSrc;
  void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: 100.w,
                height: 100.w,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                    image: AssetImage(
                      imgSrc,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              title,
              style: heading2TextStyle,
            ),
          ],
        ),
        SizedBox(
          width: 20.w,
        ),
      ],
    );
  }
}

class KategoriTitle extends StatelessWidget {
  KategoriTitle({
    Key? key,
    required this.title,
    this.withLihatSemua = false,
  }) : super(key: key);
  String title;
  bool withLihatSemua;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, bottom: 15.h, right: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: heading1TextStyle,
            textAlign: TextAlign.left,
          ),
          withLihatSemua
              ? GestureDetector(
                  onTap: () {
                    Get.toNamed('/katalogMotorPage');
                  },
                  child: Text(
                    'Lihat Semua',
                    style: normalTextStyle,
                    textAlign: TextAlign.right,
                  ),
                )
              : const Text(''),
        ],
      ),
    );
  }
}

class BrandCard extends StatelessWidget {
  BrandCard({
    Key? key,
    required this.id,
    required this.imgSrc,
    required this.logoSrc,
    required this.onTap,
  }) : super(key: key);

  String id, imgSrc, logoSrc;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240.w,
      height: 180.w,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 180.w,
                height: 180.w,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Image(image: AssetImage(logoSrc)),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: 170.w,
              child: Image(
                image: AssetImage(imgSrc),
              ),
            ),
          ),
          Positioned(
            bottom: 15.w,
            right: 15.w,
            child: Material(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10.r),
              child: InkWell(
                onTap: onTap,
                splashColor: primaryColor,
                highlightColor: whiteColor.withAlpha(40),
                borderRadius: BorderRadius.circular(10.r),
                child: Container(
                  padding: EdgeInsets.all(7.w),
                  width: 40.w,
                  height: 40.w,
                  child: const Image(
                    image: AssetImage('assets/icons/icon_arrow_right.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
