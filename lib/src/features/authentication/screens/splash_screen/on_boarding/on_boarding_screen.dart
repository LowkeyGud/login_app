import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onController = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            liquidController: onController.controller,
            onPageChangeCallback: onController.onPageChangeCallback,
            pages: onController.pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios_new_rounded),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 70,
            child: OutlinedButton(
              onPressed: () => onController.animateToNextSlide(),
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color.fromARGB(70, 0, 0, 0)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10)),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: tDarkColor,
                ),
                child: const Icon(Icons.arrow_forward_ios_rounded,
                    color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 30,
            right: 20,
            child: TextButton(
              onPressed: () => onController.skip(),
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Obx(
            () => Positioned(
                child: AnimatedSmoothIndicator(
              activeIndex: onController.currentPage.value,
              count: 3,
              effect: const WormEffect(
                activeDotColor: Colors.black,
                dotHeight: 5.0,
              ),
            )),
          )
        ],
      ),
    );
  }
}
