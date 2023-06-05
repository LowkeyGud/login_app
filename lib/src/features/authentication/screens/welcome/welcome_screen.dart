import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_string.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/features/authentication/screens/signup/signup_screen.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    Brightness brightness = Theme.of(context).brightness;
    final isLightMode = (brightness == Brightness.light);

    return Scaffold(
      backgroundColor: isLightMode ? hWhiteColor : hDarkColor,
      body: Container(
        padding: const EdgeInsets.all(defaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: const AssetImage(hWelcomeImage), height: height * 0.6),
            Column(
              children: [
                Text(hWelcomeTitle,
                    style: Theme.of(context).textTheme.displaySmall),
                Text(hWelcomeSubtitle,
                    style: Theme.of(context).textTheme.titleSmall,
                    textAlign: TextAlign.center),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Get.to(() => const LoginScreen());
                    },
                    child: Text(hLogin.toUpperCase()),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const SignUpScreen());
                    },
                    child: Text(hSignUp.toUpperCase()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
