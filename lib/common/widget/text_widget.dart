import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';

class ReusableText extends StatelessWidget {
  const ReusableText(
      {super.key,
      this.textAlign,
      required this.text,
      this.fontSizing,
      this.weight,
      this.textColor});
  final TextAlign? textAlign;
  final String text;
  final double? fontSizing;
  final FontWeight? weight;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
        fontWeight: weight ?? FontWeight.normal,
        fontSize: fontSizing ?? 16,
        color:
            textColor ?? AppColors.primarySecondaryElementText.withOpacity(0.8),
      ),
    );
  }
}

Widget textUnderline({String text = ""}) {
  return GestureDetector(
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12.sp,
        color: AppColors.primarySecondaryElementText.withOpacity(0.8),
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primaryText,
      ),
    ),
  );
}
