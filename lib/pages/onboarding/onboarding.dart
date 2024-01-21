import 'package:flutter/material.dart';
import 'package:ulearning_app/common/widget/text_widget.dart';
import 'package:ulearning_app/constants/sizing.dart';
import 'package:ulearning_app/pages/onboarding/widgets/app_onboarding_page_widget.dart';
import 'package:ulearning_app/pages/onboarding/widgets/round_button.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              AppOnboardingPage(
                  imgPath: "assets/images/reading.png",
                  headerText: "First see learning",
                  description:
                      "Forget about of paper knowledge in one learning"),
              AppOnboardingPage(
                  imgPath: "assets/images/man.png",
                  headerText: "Connect with everyone",
                  description:
                      "Always keep in touch with your tutor and friends. Let's get connected"),
              AppOnboardingPage(
                  imgPath: "assets/images/boy.png",
                  headerText: "Always Fascinated Learning",
                  description:
                      "Anywhere , anytime. The time is at your discretion. So study wherever you can"),
            ],
          ),
       
        ],
      ),
    );
  }
}
