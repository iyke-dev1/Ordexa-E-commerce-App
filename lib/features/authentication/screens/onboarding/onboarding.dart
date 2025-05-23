import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Widgets/onboarding_next_button.dart';
import 'Widgets/onboarding_dot_navigation.dart';
import 'Widgets/onboarding_page.dart';
import 'Widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // getting the instance of our onboarding controller
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: MyImage.onboardingImages1,
                title: MyTexts.onBoardingTitle1,
                subTitle: MyTexts.onBoardingSubTitle1,
              ),

              OnBoardingPage(
                image: MyImage.onboardingImages2,
                title: MyTexts.onBoardingTitle2,
                subTitle: MyTexts.onBoardingSubTitle2,
              ),

              OnBoardingPage(
                image: MyImage.onboardingImages3,
                title: MyTexts.onBoardingTitle3,
                subTitle: MyTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          OnboardingSkip(),

          /// Dot Navigator SmoothPageIndicator
          OnboardingDotNavigation(),

          /// Circular button
          OnboardingNextButton(),
        ],
      ),
    );
  }
}

