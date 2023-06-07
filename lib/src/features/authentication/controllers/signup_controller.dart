import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //Gets data from user input aka formfields/textfields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();

  void registerUser(String email, String password) {
    // AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
}
