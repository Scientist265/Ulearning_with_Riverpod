import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/widget/app_button.dart';
import 'package:ulearning_app/common/widget/app_text_field.dart';
import 'package:ulearning_app/common/widget/appbar_widget.dart';
import 'package:ulearning_app/common/widget/text_widget.dart';
import 'package:ulearning_app/constants/sizing.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar:
              buildAppbar(title: "Sign Up", automaticallyImlyingLeading: true),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 20.w, right: 10.w, top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: ReusableText(
                        text: "Enter your details below & free sign up"),
                  ),
                  AppSizing.h40,
                  const ReusableText(text: "Username"),
                  const AppTextField(
                      iconName: "assets/icons/person.png",
                      hintText: "Enter your username"),
                  AppSizing.h20,
                  const ReusableText(text: "Email"),
                  const AppTextField(
                      iconName: "assets/icons/person.png",
                      hintText: "Enter your email address"),
                  AppSizing.h20,
                  const ReusableText(text: "Password"),
                  const AppTextField(
                      iconName: "assets/icons/lock.png",
                      hintText: "Enter your Password"),
                  AppSizing.h20,
                  const ReusableText(text: "Confirm Password"),
                  const AppTextField(
                      iconName: "assets/icons/lock.png",
                      hintText: "Enter your confirm password"),
                  AppSizing.h20,
                  const ReusableText(
                      textAlign: TextAlign.start,
                      fontSizing: 14, 
                      text:
                          "By creating an account you have to agree with our Term and Condition"),
                  AppSizing.h54,
                  AppButton(
                    onTap: () {},
                    buttonText: "Sign Up",
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
