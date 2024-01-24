import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/widget/app_shadow.dart';
import 'package:ulearning_app/common/widget/text_widget.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.isLogin = true,
      this.width = 325,
      this.height = 50,
      this.buttonText = "",
      this.border,
      this.onTap});
  final bool isLogin;
  final double width, height;
  final String buttonText;
  final BoxBorder? border;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width.w,
        height: height.h,
        decoration: appBoxShadow(
            border: border,
            color: isLogin
                ? AppColors.primaryElement
                : AppColors.primaryBackground),
        child: Center(
          child: ReusableText(
            text: buttonText,
            textColor:
                isLogin ? AppColors.primaryBackground : AppColors.primaryText,
          ),
        ),
      ),
    );
  }
}
