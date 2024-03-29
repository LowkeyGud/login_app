import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:login_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_app/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: GAppTheme.lightTheme,
      darkTheme: GAppTheme.darkTheme,
      themeMode: ThemeMode.system, //deafault
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 600),
      home: SplashScreen(),
    );
  }
}
