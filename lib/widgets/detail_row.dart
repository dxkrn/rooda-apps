import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rooda_apps/themes/themes.dart';

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
