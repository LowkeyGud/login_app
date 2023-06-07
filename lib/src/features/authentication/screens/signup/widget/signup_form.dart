import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/controllers/signup_controller.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    // ignore: no_leading_underscores_for_local_identifiers
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: hFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FULL NAME

            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                  label: Text(hFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),

            // EMAIL

            const SizedBox(height: 10),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  label: Text(hEmail), prefixIcon: Icon(Icons.email_outlined)),
            ),

            // PASSWORD

            const SizedBox(height: 10),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                  label: Text(hPassword), prefixIcon: Icon(Icons.lock)),
            ),

            // SIGN UP BUTTON

            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    SignupController.instance.registerUser(
                        controller.email.text.trim(),
                        controller.password.text.trim());
                  }
                },
                child: Text(hSignUp.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
