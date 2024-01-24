import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appImage({
  String imgPath = "assets/icons/user.png",
  double width = 16,
  double height = 16,
}) {
  return Image.asset(
    imgPath.isEmpty ? "assets/icons/user.png" : imgPath,
    width: width.w,
    height: height.h,
  );
}
