import 'package:fixmygiz/OnBoardingScreen/onboarding_screen1.dart';
import 'package:fixmygiz/auth/views/auth_screen.dart';
import 'package:fixmygiz/auth/views/otp_screen.dart';
import 'package:fixmygiz/bottom_navigation_bar.dart';
import 'package:fixmygiz/home_screen/home_screen2.dart';
import 'package:fixmygiz/rough.dart';
import 'package:fixmygiz/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fix My Giz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
           MyBottomNavigationBar()


      //SplashScreen(),
    );
  }
}
