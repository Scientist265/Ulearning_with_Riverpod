import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/widget/app_button.dart';
import 'package:ulearning_app/common/widget/app_text_field.dart';
import 'package:ulearning_app/common/widget/navigator.dart';
import 'package:ulearning_app/common/widget/text_widget.dart';
import 'package:ulearning_app/config/routes.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';
import 'package:ulearning_app/constants/sizing.dart';
import 'package:ulearning_app/common/widget/appbar_widget.dart';
import 'package:ulearning_app/features/auth/sign_in/providers/sign_in_notifier.dart';
import 'package:ulearning_app/features/auth/sign_in/sign_in_controller.dart';
import 'package:ulearning_app/features/auth/sign_in/widgets/third_party_logins.dart';

class SignIn extends ConsumerStatefulWidget {
  const SignIn({super.key});

  @override
  ConsumerState<SignIn> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> {
  late SignInController _controller;
  @override
  void initState() {
    _controller = SignInController(ref);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final signInProvider = ref.watch(signInNotifierProvider);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppbar(title: "Login"),
            body: SingleChildScrollView(
              child: Column(
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
                        AppTextField(
                          onChanged: (email) => ref
                              .read(signInNotifierProvider.notifier)
                              .onPasswordChange(email),
                          iconName: "assets/icons/user.png",
                          hintText: 'Enter your email',
                        ),
                        AppSizing.h12,
                        const ReusableText(
                          text: "Password",
                          fontSizing: 14,
                        ),
                        AppTextField(
                          onChanged: (password) => ref
                              .read(signInNotifierProvider.notifier)
                              .onPasswordChange(password),
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
                        AppButton(
                            buttonText: "Log in",
                            onTap: () {
                              _controller.handleSignIn();
                            }),
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
              ),
            )),
      ),
    );
  }
}
