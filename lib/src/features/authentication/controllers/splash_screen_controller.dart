import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/splash_screen/on_boarding/on_boarding_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(
        const Duration(milliseconds: 500)); //delays complier by 0.5sec
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 1000));
    Get.to(const OnBoardingScreen());
  }
}
