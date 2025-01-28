import 'package:et_app/features/authentication/controllers.onborading/onboarding_controller.dart';
import 'package:et_app/utils/constants/colors.dart';
import 'package:et_app/utils/constants/image_strings.dart';
import 'package:et_app/utils/constants/sizes.dart';
import 'package:et_app/utils/constants/text_strings.dart';
import 'package:et_app/utils/device/device_utility.dart';
import 'package:et_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = EtHelperFunctions.isDarkMode(context);
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              // On boarding pages
              OnBoardingPage(
                image: EtImages.onBoardingImage1,
                title: EtTexts.onBoardingTitle1,
                subtitle: EtTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EtImages.onBoardingImage2,
                title: EtTexts.onBoardingTitle2,
                subtitle: EtTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EtImages.onBoardingImage3,
                title: EtTexts.onBoardingTitle3,
                subtitle: EtTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          // On boarding Skip Button.
          OnBoardingSkipButton(),

          // On boarding Navigation Dots
          OnBoardingNavigationDots(),

          // On boarding Navigation nextPage Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}

// ELEVATED NEXT BUTTON
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = EtHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: EtDeviceUtils.getBottomNavigationBarHeight(),
        right: EtSizes.defaultSpace,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: BorderSide(color: dark ? EtColors.primary : Colors.black),
                shape: CircleBorder(),
                elevation: 4.0,
                backgroundColor: dark ? EtColors.primary : Colors.black),
            onPressed: () => OnBoardingController.instance.nextPage(),
            child: Icon(Iconsax.arrow_right_3)));
  }
}

// SKIP BUTTON
class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: EtDeviceUtils.getAppBarHeight(),
        right: EtSizes.defaultSpace,
        child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPage(),
            child: Text(style: Theme.of(context).textTheme.bodyLarge, 'Skip')));
  }
}

// NAVIGATION DOTS
class OnBoardingNavigationDots extends StatelessWidget {
  const OnBoardingNavigationDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = EtHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: EtDeviceUtils.getBottomNavigationBarHeight() + 24,
        left: EtSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? EtColors.light : EtColors.dark,
              dotHeight: 6),
        ));
  }
}

// ONBOARDING PAGE
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(EtSizes.defaultSpace),
      child: PageView(
        children: [
          Column(
            children: [
              Image.asset(
                  width: EtHelperFunctions.screenWidth() * 0.8,
                  height: EtHelperFunctions.screenHeight() * 0.6,
                  image),
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: EtSizes.defaultBwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}
