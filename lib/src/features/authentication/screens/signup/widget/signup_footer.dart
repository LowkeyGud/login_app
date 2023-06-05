import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/image_string.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(height: 10.0),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(hGoogleLogo),
              width: 20.0,
            ),
            label: Text(hSignInWithGoogle.toUpperCase()),
          ),
        ),
        TextButton(
          onPressed: () {
            Get.to(() => const LoginScreen());
          },
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: hAlreadyHaveAnAccount,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(text: hLogin.toUpperCase())
          ])),
        )
      ],
    );
  }
}
