import 'package:flutter/material.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
        backgroundColor: Colors.blue,
        color: AppColors.primaryElement,
      ));
  }
}