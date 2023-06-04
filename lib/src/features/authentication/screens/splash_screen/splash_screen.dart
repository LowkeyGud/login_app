import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/image_string.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              top: splashController.animate.value ? 40 : -30,
              left: splashController.animate.value ? 40 : -30,
              child: const Image(image: AssetImage(splashIcon), height: 100),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              top: splashController.animate.value ? 160 : -30,
              left: splashController.animate.value ? 40 : -30,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(appName,
                        style: Theme.of(context).textTheme.displaySmall),
                    Text(appTagLine,
                        style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              bottom: splashController.animate.value ? 200 : -30,
              left: splashController.animate.value ? 40 : -30,
              child: const Image(
                image: AssetImage(splashNote),
                height: 250,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
