import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rooda_apps/themes/themes.dart';

class MotorCard extends StatefulWidget {
  MotorCard({
    Key? key,
    required this.id,
    required this.title,
    required this.desc,
    required this.price,
    required this.imgSrc,
    required this.lihatDetailButton,
    required this.addButton,
    this.withSpace = false,
  }) : super(key: key);
  String id, title, desc, price, imgSrc;
  void Function() lihatDetailButton, addButton;
  bool withSpace;
  bool isFav = false;
  @override
  State<MotorCard> createState() => _MotorCardState();
}

class _MotorCardState extends State<MotorCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.withSpace
          ? EdgeInsets.only(right: 20.w)
          : const EdgeInsets.only(right: 0),
      child: Stack(
        children: [
          Container(
            width: 150.w,
            height: 250.w,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: darkColor.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 150.w,
              height: 170.w,
              padding: EdgeInsets.only(
                left: 10.w,
                top: 25.w,
                right: 10.w,
                bottom: 60.w,
              ),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Container(
                // color: darkColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: heading3TextStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 2.w,
                    ),
                    Text(
                      widget.desc,
                      style: heading4TextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 7.w,
                    ),
                    Text(
                      widget.price,
                      style: normalTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              width: 150.w,
              height: 92.w,
              child: Image(
                image: AssetImage(
                  widget.imgSrc,
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            bottom: 15.w,
            child: Container(
              // color: bgColor,
              width: 150.w,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: widget.lihatDetailButton,
                    child: Text(
                      'Lihat Detail',
                      style: heading4TextStyle.copyWith(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Material(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10.r),
                    child: InkWell(
                      onTap: widget.addButton,
                      splashColor: primaryColor,
                      highlightColor: whiteColor.withAlpha(40),
                      borderRadius: BorderRadius.circular(10.r),
                      child: Container(
                        padding: EdgeInsets.all(7.w),
                        width: 40.w,
                        height: 40.w,
                        child: const Image(
                          image: AssetImage('assets/icons/icon_plus.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.isFav = !widget.isFav;
                });
                print(widget.isFav);
              },
              child: Container(
                width: 35.w,
                height: 35.w,
                decoration: BoxDecoration(
                  color: darkColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 22.w,
                      height: 22.w,
                      child: Image(
                        image: widget.isFav
                            ? const AssetImage(
                                'assets/icons/icon_fav_active.png',
                              )
                            : const AssetImage(
                                'assets/icons/icon_fav_inactive.png',
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
