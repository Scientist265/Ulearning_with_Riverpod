import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/global_loader/global_loader.dart';
import 'package:ulearning_app/common/widget/app_button.dart';
import 'package:ulearning_app/common/widget/app_text_field.dart';
import 'package:ulearning_app/common/widget/appbar_widget.dart';
import 'package:ulearning_app/common/widget/loader.dart';
import 'package:ulearning_app/common/widget/text_widget.dart';
import 'package:ulearning_app/constants/sizing.dart';
import 'package:ulearning_app/features/auth/sign_up/providers/register_notifier.dart';
import 'package:ulearning_app/features/auth/sign_up/sign_up_controller.dart';

class SignUp extends ConsumerWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerProvider = ref.watch(registerNotifierProvider);
    final loader = ref.watch(appLoaderProvider);
    SignUpController register = SignUpController(ref: ref);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar:
              buildAppbar(title: "Sign Up", automaticallyImlyingLeading: true),
          body: loader == false
              ? SingleChildScrollView(
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
                        AppTextField(
                            onChanged: (value) => ref
                                .read(registerNotifierProvider.notifier)
                                .onUserNameChange(value),
                            iconName: "assets/icons/person.png",
                            hintText: "Enter your username"),
                        AppSizing.h20,
                        const ReusableText(text: "Email"),
                        AppTextField(
                          iconName: "assets/icons/person.png",
                          hintText: "Enter your email address",
                          onChanged: (value) => ref
                              .read(registerNotifierProvider.notifier)
                              .onEmailChange(value),
                        ),
                        AppSizing.h20,
                        const ReusableText(text: "Password"),
                        AppTextField(
                          iconName: "assets/icons/lock.png",
                          hintText: "Enter your Password",
                          obscureText: true,
                          onChanged: (value) => ref
                              .read(registerNotifierProvider.notifier)
                              .onPasswordChange(value),
                        ),
                        AppSizing.h20,
                        const ReusableText(text: "Confirm Password"),
                        AppTextField(
                          iconName: "assets/icons/lock.png",
                          hintText: "Enter your confirm password",
                          obscureText: true,
                          onChanged: (value) => ref
                              .read(registerNotifierProvider.notifier)
                              .onRePasswordChange(value),
                        ),
                        AppSizing.h20,
                        const ReusableText(
                            textAlign: TextAlign.start,
                            fontSizing: 14,
                            text:
                                "By creating an account you have to agree with our Term and Condition"),
                        AppSizing.h54,
                        AppButton(
                          onTap: () => register.handleSignUP(),
                          buttonText: "Register",
                        )
                      ],
                    ),
                  ),
                )
              : const LoaderWidget(),
        ),
      ),
    );
  }
}
