import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rooda_apps/themes/themes.dart';

class SearchBar extends StatelessWidget {
  SearchBar({
    Key? key,
    required this.hintText,
    required this.onTap,
  }) : super(key: key);
  String hintText;
  void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.w,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: whiteColor,
      ),
      child: Center(
        child: TextField(
          style: normalTextStyle.copyWith(
            color: darkColor,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: normalTextStyle.copyWith(
              color: darkColor.withAlpha(90),
            ),
            hintText: hintText,
            suffixIcon: SizedBox(
              width: 24.w,
              height: 24.w,
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(30.r),
                splashColor: primaryColor.withAlpha(80),
                child: SizedBox(
                  width: 24.w,
                  height: 24.w,
                  child: const Image(
                    image: AssetImage(
                      'assets/icons/icon_search.png',
                    ),
                  ),
                ),
              ),
            ),
            suffixIconConstraints: BoxConstraints(
              minWidth: 24.w,
              minHeight: 24.w,
            ),
          ),
        ),
      ),
    );
  }
}
