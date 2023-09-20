
import 'package:fixmygiz/rough.dart';
import 'package:fixmygiz/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';

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
      // Rough()
      //MyBottomNavigationBar()


     SplashScreen(),
    );
  }
}
