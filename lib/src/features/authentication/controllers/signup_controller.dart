import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/repository/auth_repo/auth_repo.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //Gets data from user input aka formfields/textfields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();

  Future<void> registerUser (String email, String password) async {
    await AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
    // Get.to(() => const Dashboard());
  }
}
