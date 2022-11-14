import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color primaryColor = Color(0xff4AD193);
Color secondaryColor = Color(0xff395679);
Color darkColor = Color(0xff28415F);
Color whiteColor = Color(0xffFFFFFF);
Color bgColor = Color(0xffECFEFF);
Color navbarColor = Color(0xffC9E4E5);

TextStyle heading1TextStyle = GoogleFonts.poppins(
  fontSize: 20.sp,
  fontWeight: FontWeight.w900,
  color: whiteColor,
);

TextStyle heading2TextStyle = GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.bold,
  color: whiteColor,
);

TextStyle heading3TextStyle = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.bold,
  color: whiteColor,
);

TextStyle normalTextStyle = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.normal,
  color: whiteColor,
);

TextStyle heading4TextStyle = GoogleFonts.poppins(
  fontSize: 12.sp,
  fontWeight: FontWeight.normal,
  color: whiteColor,
);

double deviceWidth = Get.width;
double deviceHeight = Get.height;

double verticalSpaceSmall = 15.h;
double verticalSpaceBig = 30.h;

double horizontalSpaceSmall = 10.w;
double horizontalSpaceBig = 20.w;
