import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rooda_apps/controllers/kategori_button_controller.dart';
import 'package:rooda_apps/themes/themes.dart';
import 'package:rooda_apps/widgets/motor_card.dart';
import 'package:rooda_apps/widgets/search_bar.dart';

int kategoriActiveIndex = 0;

List<Widget> kategoriList = [
  SizedBox(width: 24.w),
  KategoriButton(index: 0, title: 'Semua'),
  KategoriButton(index: 1, title: 'Matic'),
  KategoriButton(index: 2, title: 'Cub'),
  KategoriButton(index: 3, title: 'Sport'),
  KategoriButton(index: 4, title: 'Naked'),
  KategoriButton(index: 5, title: 'Offroad'),
];

class KatalogMotorPage extends StatefulWidget {
  const KatalogMotorPage({super.key});

  @override
  State<KatalogMotorPage> createState() => _KatalogMotorPageState();
}

class _KatalogMotorPageState extends State<KatalogMotorPage> {
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
              SizedBox(
                height: 140.w,
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
          Column(
            children: [
              //NOTE : SEARCH BAR
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
                      hintText: 'Coba "Beat"',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.w,
              ),
              //NOTE : KATEGORI LIST BUTTON
              SizedBox(
                height: 30.w,
                // color: darkColor,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Row(
                      children: kategoriList,
                    ),
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

class KategoriButton extends StatefulWidget {
  KategoriButton({
    Key? key,
    required this.index,
    required this.title,
  }) : super(key: key);

  int index;
  String title;

  @override
  State<KategoriButton> createState() => _KategoriButtonState();
}

class _KategoriButtonState extends State<KategoriButton> {
  //NOTE : Kategori Button Controller
  final KategoriButtonController kategoriController =
      Get.put(KategoriButtonController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // setState(() {
        //   kategoriActiveIndex = widget.index;
        // });
        kategoriController.activeIndex.value = widget.index;
        print('${widget.title} tapped');
      },
      child: Obx(
        () => Container(
          alignment: Alignment.center,
          width: 100.w,
          height: 30.w,
          margin: EdgeInsets.only(right: 10.w),
          decoration: kategoriController.activeIndex.value == widget.index
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
          child: kategoriController.activeIndex.value == widget.index
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
