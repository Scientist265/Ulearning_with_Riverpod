import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdPartyLogins extends StatelessWidget {
  const ThirdPartyLogins({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 80.w, right: 80.w, top: 40.h, bottom: 20.h),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          LoginButton(
            imgPath: "assets/icons/google.png",
          ),
          LoginButton(
            imgPath: "assets/icons/apple.png",
          ),
          LoginButton(
            imgPath: "assets/icons/facebook.png",
          ),
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.imgPath});
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: SizedBox(
        width: 40.w,
        height: 40.h,
        child: Image.asset(imgPath),
      ),
    );
  }
}
