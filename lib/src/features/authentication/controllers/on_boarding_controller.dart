import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_string.dart';
import '../../../constants/text_strings.dart';
import '../models/model_onboarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tonBoardingImage1,
        title: tOnboardingTitle1,
        subtitle: tOnboardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgColor: hOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tonBoardingImage2,
        title: tOnboardingTitle2,
        subtitle: tOnboardingSubTitle2,
        counterText: tOnBoardingCounter2,
        bgColor: hOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tonBoardingImage3,
        title: tOnboardingTitle3,
        subtitle: tOnboardingSubTitle3,
        counterText: tOnBoardingCounter3,
        bgColor: hOnBoardingPage3Color,
      ),
    ),
  ];

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
