import 'package:flutter/material.dart';
import 'package:ulearning_app/common/widget/app_shadow.dart';
import 'package:ulearning_app/common/widget/text_widget.dart';
import 'package:ulearning_app/constants/colors.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: const Center(
        child: ReusableText(
          text: "Next",
          textColor: AppColors.primaryBackground,
        ),
      ),
    );
  }
}
