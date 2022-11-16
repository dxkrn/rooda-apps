import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rooda_apps/controllers/navbar_controller.dart';
import 'package:rooda_apps/themes/themes.dart';

//NOTE : Navbar  Controller
final NavbarController navbarController = Get.put(NavbarController());

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  // //NOTE : Navbar  Controller
  // final NavbarController navbarController = Get.put(NavbarController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth - 28.w,
      height: 62.w,
      // margin: EdgeInsets.only(bottom: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: navbarColor,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: darkColor.withOpacity(0.25),
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavbarButton(
            index: 0,
            activeImgSrc: 'assets/icons/icon_navbar_home_active.png',
            inactiveImgSrc: 'assets/icons/icon_navbar_home_inactive.png',
            pageRoute: '/navbarHomePage',
          ),
          NavbarButton(
            index: 1,
            activeImgSrc: 'assets/icons/icon_navbar_katalog_active.png',
            inactiveImgSrc: 'assets/icons/icon_navbar_katalog_inactive.png',
            pageRoute: '/navbarKatalogPage',
          ),
          NavbarButton(
            index: 2,
            activeImgSrc: 'assets/icons/icon_navbar_riwayat_active.png',
            inactiveImgSrc: 'assets/icons/icon_navbar_riwayat_inactive.png',
            pageRoute: '/navbarRiwayatPage',
          ),
          NavbarButton(
            index: 3,
            activeImgSrc: 'assets/icons/icon_navbar_fav_active.png',
            inactiveImgSrc: 'assets/icons/icon_navbar_fav_inactive.png',
            pageRoute: '/navbarFavPage',
          ),
          NavbarButton(
            index: 4,
            activeImgSrc: 'assets/icons/icon_navbar_setting_active.png',
            inactiveImgSrc: 'assets/icons/icon_navbar_setting_inactive.png',
            pageRoute: '/navbarSettingPage',
          ),
        ],
      ),
    );
  }
}

class NavbarButton extends StatelessWidget {
  NavbarButton({
    Key? key,
    required this.index,
    required this.activeImgSrc,
    required this.inactiveImgSrc,
    required this.pageRoute,
  }) : super(key: key);
  int index;
  String activeImgSrc, inactiveImgSrc, pageRoute;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          navbarController.activeIndex.value = index;
          Get.offNamed(pageRoute);
        },
        child: navbarController.activeIndex.value == index
            ? Container(
                width: 40.w,
                height: 40.w,
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Image(
                  image: AssetImage(activeImgSrc),
                ),
              )
            : Container(
                width: 40.w,
                height: 40.w,
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  // color: secondaryColor,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Image(
                  image: AssetImage(inactiveImgSrc),
                ),
              ),
      ),
    );
  }
}
