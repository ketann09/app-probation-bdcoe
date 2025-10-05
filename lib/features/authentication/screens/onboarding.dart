import 'package:e_commerce_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage1(
                image: MyImages.onBoarding,
                title: MyTexts.onBoardingTitle1,
                subTitle: MyTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage1(
                image: MyImages.onBoarding,
                title: MyTexts.onBoardingTitle2,
                subTitle: MyTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage1(
                image: MyImages.onBoarding,
                title: MyTexts.onBoardingTitle3,
                subTitle: MyTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          Positioned(
            top: MyDeviceUtils.getAppBarHeight(),
            right: MySizes.defautSpace,
            child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text('Skip')),
          ),
          const OnBoardingNavigator(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Positioned(
      right: MySizes.defautSpace,
      bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark ? MyColors.primary : Colors.black,
        ),
        onPressed: () => OnBoardingController.instance.nextPage(),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}

class OnBoardingNavigator extends StatelessWidget {
  const OnBoardingNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = MyHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MySizes.defautSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? MyColors.light : MyColors.dark,
          dotHeight: 6,
        ),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}

class OnBoardingPage1 extends StatelessWidget {
  const OnBoardingPage1({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MySizes.defautSpace),
      child: Column(
        children: [
          Image(
            width: MyHelperFunctions.screenWidth() * 0.8,
            height: MyHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: MySizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
