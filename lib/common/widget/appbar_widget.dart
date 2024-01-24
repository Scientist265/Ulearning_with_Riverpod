import 'package:flutter/material.dart';
import 'package:ulearning_app/common/widget/text_widget.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';

AppBar buildAppbar(
    {String title = "", bool automaticallyImlyingLeading = false}) {
  return AppBar(
    automaticallyImplyLeading: automaticallyImlyingLeading,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        height: 1,
        color: AppColors.primarySecondaryElementText.withOpacity(0.2),
      ),
    ),
    title: ReusableText(text: title),
  );
}
