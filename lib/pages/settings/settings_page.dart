import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rooda_apps/themes/themes.dart';
import 'package:rooda_apps/widgets/custom_navbar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
          'Settings',
          style: heading1TextStyle,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomNavbar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 100.w,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.r),
                        bottomRight: Radius.circular(50.r),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: deviceWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50.w,
                        ),
                        Container(
                          width: 100.w,
                          height: 100.w,
                          decoration: BoxDecoration(
                            color: darkColor,
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          child: Image(
                            image:
                                AssetImage('assets/images/img_avatar_male.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: verticalSpaceSmall,
                    ),
                    Text(
                      'Ahmad Subagyo',
                      style: heading2TextStyle.copyWith(color: darkColor),
                    ),
                    SizedBox(
                      height: verticalSpaceBig,
                    ),
                    SettingButton(
                      title: 'Akun',
                      onTap: () {},
                    ),
                    SettingButton(
                      title: 'Notifikasi',
                      onTap: () {},
                    ),
                    SettingButton(
                      title: 'Tentang Pengembang',
                      onTap: () {},
                    ),
                    SettingButton(
                      title: 'Kritik dan Saran',
                      onTap: () {},
                    ),
                    SettingButton(
                      title: 'Log out',
                      onTap: () {},
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

class SettingButton extends StatelessWidget {
  SettingButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  String title;
  void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: verticalSpaceSmall,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50.w,
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              width: 1,
              color: darkColor,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: heading3TextStyle.copyWith(color: darkColor),
              ),
              SizedBox(
                width: 24.w,
                height: 24.w,
                child: const Image(
                  image: AssetImage(
                    'assets/icons/icon_arrow_right.png',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
