import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:siba_cms_2/HomeScreen/BottomNavigationBar.dart';
import 'package:page_transition/page_transition.dart';
import 'package:siba_cms_2/HomeScreen/Login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset("assets/images/iba_logo.png"),
      duration: 1000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.rightToLeftWithFade,
      backgroundColor: Colors.blueAccent,
      nextScreen: LogIn(),
    );
  }
}
