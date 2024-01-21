import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/constants/colors.dart';
import 'package:ulearning_app/features/onboarding/provider/welcome_notifier.dart';
import 'package:ulearning_app/features/onboarding/widgets/app_onboarding_page_widget.dart';


// final indexProvider = StateProvider<int>((ref) => 0);

// ignore: must_be_immutable
class Onboarding extends ConsumerWidget {
  Onboarding({super.key});

  final PageController _pageController = PageController();


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.only(top: 30.h),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                //Welcome pages
                PageView(
                  controller: _pageController,
                  children: [
                    AppOnboardingPage(
                      imgPath: "assets/images/reading.png",
                      headerText: "First see learning",
                      description:
                          "Forget about of paper knowledge in one learning",
                      index: 1,
                      controller: _pageController,
                    ),
                    AppOnboardingPage(
                      imgPath: "assets/images/man.png",
                      headerText: "Connect with everyone",
                      description:
                          "Always keep in touch with your tutor and friends. Let's get connected",
                      index: 2,
                      controller: _pageController,
                    ),
                    AppOnboardingPage(
                      imgPath: "assets/images/boy.png",
                      headerText: "Always Fascinated Learning",
                      description:
                          "Anywhere , anytime. The time is at your discretion. So study wherever you can",
                      index: 3,
                      controller: _pageController,
                    ),
                  ],
                  onPageChanged: (value) {
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                ),

                // showing dots
                Positioned(
                  bottom: 50, 
                  child: DotsIndicator(
                    mainAxisAlignment: MainAxisAlignment.center,
                    position: index,
                    dotsCount: 3,
                    decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(18, 8),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.w)),
                        activeColor: AppColors.primaryElement,
                        color: AppColors.primarySecondaryElementText),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
