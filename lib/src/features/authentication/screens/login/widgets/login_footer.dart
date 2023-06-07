import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/image_string.dart';
import 'package:login_app/src/constants/text_strings.dart';

import '../../signup/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: 10.0),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(hGoogleLogo), width: 20.0),
            onPressed: () {},
            label: const Text(hSignInWithGoogle),
          ),
        ),
        const SizedBox(height: 10.0),
        TextButton(
          onPressed: () {
            Get.off(() => const SignUpScreen());
          },
          child: Text.rich(
            TextSpan(
                text: hDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodySmall,
                children: const [
                  TextSpan(text: hSignUp, style: TextStyle(color: Colors.blue))
                ]),
          ),
        ),
      ],
    );
  }
}
