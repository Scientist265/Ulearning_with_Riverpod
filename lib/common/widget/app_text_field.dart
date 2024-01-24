import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/widget/app_shadow.dart';
import 'package:ulearning_app/common/widget/image_widget.dart';
import 'package:ulearning_app/constants/colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.iconName,
      required this.hintText,
      this.keyboardType,
      this.onChanged,
      this.obscureText = false});
  final String iconName, hintText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.w,
      height: 50.h,
      decoration: appBoxDecorationTextField(),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 17.w),
            child: appImage(imgPath: iconName),
          ),
          SizedBox(
            width: 290.w,
            height: 50.h,
            child: TextField(
              keyboardType: keyboardType,
              enabled: true,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                    fontSize: 14, color: AppColors.primarySecondaryElementText),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
              onChanged: onChanged,
              maxLines: 1,
              //byDefault
              obscureText: obscureText,
            ),
          )
        ],
      ),
    );
  }
}
