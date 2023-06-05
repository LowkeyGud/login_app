import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:login_app/src/constants/image_string.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(defaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(hOPTImage),
            Text(hVerification.toUpperCase(),
                style: Theme.of(context).textTheme.displaySmall),
            const SizedBox(height: 40.0),
            const Text("$hVerificationMessage ggbro@wow.com",
                textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            OtpTextField(
                focusedBorderColor: const Color.fromARGB(198, 132, 38, 255),
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code) => print("OTP is => $code")),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: const Text(hNext)),
            ),
          ],
        ),
      ),
    );
  }
}
