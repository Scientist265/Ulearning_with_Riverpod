import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/widget/app_button.dart';
import 'package:ulearning_app/common/widget/app_text_field.dart';
import 'package:ulearning_app/common/widget/navigator.dart';
import 'package:ulearning_app/common/widget/text_widget.dart';
import 'package:ulearning_app/config/routes.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';
import 'package:ulearning_app/constants/sizing.dart';
import 'package:ulearning_app/common/widget/appbar_widget.dart';
import 'package:ulearning_app/features/auth/sign_in/widgets/third_party_logins.dart';
import 'package:ulearning_app/features/auth/sign_up/sign_up.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppbar(title: "Login"),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Third Party Login
                const ThirdPartyLogins(),
                const Center(
                  child: ReusableText(
                    text: "Or use your email account login",
                    fontSizing: 14,
                  ),
                ),
                AppSizing.h40,
                Container(
                  margin: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ReusableText(
                        text: "Email",
                        fontSizing: 14,
                      ),
                      const AppTextField(
                        iconName: "assets/icons/user.png",
                        hintText: 'Enter your email',
                      ),
                      AppSizing.h12,
                      const ReusableText(
                        text: "Password",
                        fontSizing: 14,
                      ),
                      const AppTextField(
                        iconName: "assets/icons/lock.png",
                        hintText: 'Enter your Password',
                        obscureText: true,
                      ),
                      AppSizing.h8,
                      // forgot password
                      textUnderline(
                        text: "Forgot Password",
                      ),
                      AppSizing.h54,
                      AppSizing.h40,
                      const AppButton(
                        buttonText: "Log in",
                      ),
                      AppSizing.h20,
                      AppButton(
                        border: Border.all(
                            color: AppColors.primaryText, width: 0.5),
                        buttonText: "Register",
                        isLogin: false,
                        onTap: () => pushNamed(context, signUp),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
