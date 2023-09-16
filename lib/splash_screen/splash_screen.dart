import 'dart:async';

import 'package:fixmygiz/OnBoardingScreen/onboarding_screen1.dart';
import 'package:fixmygiz/auth/views/auth_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changeScreen(){
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return const OnboardingScreen();
      }));
    });
  }
  @override
  void initState() {
    changeScreen();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('images/logoblack.png'),
      ),
    );
  }
}
