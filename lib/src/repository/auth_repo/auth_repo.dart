import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:login_app/src/features/core/screens/dashboard/dashboard.dart';
import 'package:login_app/src/repository/auth_repo/defaut_signup_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  //Will be load when app launches this func will be called and set the firebaseUser state
  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  /// If we are setting initial screen from here
  /// then in the main.dart => App() add CircularProgressIndicator()
  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const Welcome())
        : Get.offAll(() => const Dashboard());
  }

  //FUNC
  Future<Void?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const Dashboard())
          : Get.to(() => const Welcome());
    } on FirebaseAuthException catch (e) {
      final ex = DefaultSignUpFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION = ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = DefaultSignUpFailure();
      print('EXCEPTION = ${ex.message}');
      throw ex;
    }
    return null;
  }

  Future<Void?> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = DefaultSignUpFailure.code(e.code);
      throw ex;
    } catch (_) {
      const ex = DefaultSignUpFailure();
      throw ex;
    }
    return null;
  }

  Future<void> logout() async => await _auth.signOut();
}
