import 'package:flutter/material.dart';
import 'package:ulearning_app/common/widget/app_shadow.dart';
import 'package:ulearning_app/common/widget/text_widget.dart';
import 'package:ulearning_app/config/routes.dart';
import 'package:ulearning_app/constants/colors.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.index,
    required this.controller,
  });
  final int index;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (index < 3) {
          controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        } else {
          Navigator.of(context).pushNamed(signIn);
        }
      },
      child: Container(
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
      ),
    );
  }
}
