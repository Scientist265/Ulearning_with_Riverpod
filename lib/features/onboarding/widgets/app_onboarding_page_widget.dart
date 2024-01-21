import 'package:flutter/material.dart';
import 'package:ulearning_app/common/widget/text_widget.dart';
import 'package:ulearning_app/constants/colors.dart';
import 'package:ulearning_app/constants/sizing.dart';
import 'package:ulearning_app/features/onboarding/widgets/next_button.dart';

class AppOnboardingPage extends StatelessWidget {
  const AppOnboardingPage(
      {super.key,
      required this.imgPath,
      required this.headerText,
      required this.description,
      this.index = 0,
      required this.controller});
  final String imgPath, headerText, description;
  final int index;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imgPath,
          fit: BoxFit.fitWidth,
        ),
        ReusableText(
          text: headerText,
          textColor: AppColors.primaryText,
          fontSizing: 24,
        ),
        AppSizing.h8,
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 20),
          child: ReusableText(
            text: description,
            fontSizing: 16,
          ),
        ),
        NextButton(
          index: index,
          controller: controller,
        )
      ],
    );
  }
}
