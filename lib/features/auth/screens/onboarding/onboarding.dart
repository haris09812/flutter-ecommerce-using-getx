import 'package:Arccessory/features/auth/controller/onboarding/onboarding_controller.dart';
import 'package:Arccessory/features/auth/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:Arccessory/features/auth/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:Arccessory/features/auth/screens/onboarding/widgets/onboarding_page.dart';
import 'package:Arccessory/features/auth/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:Arccessory/utils/constants/image_strings.dart';
import 'package:Arccessory/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scroll Image
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.tOnBoardingImage1,
                title: TTexts.tOnBoardingTitle1,
                subTitle: TTexts.tOnBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.tOnBoardingImage2,
                title: TTexts.tOnBoardingTitle2,
                subTitle: TTexts.tOnBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.tOnBoardingImage3,
                title: TTexts.tOnBoardingTitle3,
                subTitle: TTexts.tOnBoardingSubTitle3,
              ),
            ],
          ),

          //Skip Button
          OnBoardingSkip(),

          //Dot Navigator
          OnBoardingDotNavigation(),

          //Circular button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}


