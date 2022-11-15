import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rooda_apps/themes/themes.dart';

class InputForm extends StatelessWidget {
  InputForm({
    Key? key,
    required this.id,
    required this.title,
    required this.hintText,
    this.width = 0,
  }) : super(key: key);

  String id, title, hintText;
  double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: heading3TextStyle.copyWith(
            color: darkColor,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          // width: 250.w,
          height: 50.w,
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              width: 1,
              color: darkColor,
            ),
            // color: navbarColor,
          ),
          child: Center(
            child: TextField(
              cursorColor: primaryColor,
              style: normalTextStyle.copyWith(
                color: darkColor,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: normalTextStyle.copyWith(
                  color: darkColor.withAlpha(90),
                ),
                hintText: hintText,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}
