import 'package:flutter/material.dart';
import 'package:ulearning_app/common/widget/text_widget.dart';
import 'package:ulearning_app/constants/colors.dart';
import 'package:ulearning_app/constants/sizing.dart';
import 'package:ulearning_app/pages/onboarding/widgets/round_button.dart';

class AppOnboardingPage extends StatelessWidget {
  const AppOnboardingPage(
      {super.key,
      required this.imgPath,
      required this.headerText,
      required this.description});
  final String imgPath, headerText, description;

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
        const NextButton()
      ],
    );
  }
}
