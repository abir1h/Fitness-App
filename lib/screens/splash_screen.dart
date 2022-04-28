import 'dart:async';

import 'package:fitness_app/screens/MainHome.dart';
import 'package:flutter/material.dart';

import 'intro.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startTimer() async {
    var duration = const Duration(milliseconds: 2000);
    return Timer(duration, route);
  }

  Naviagate() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const OnBoardingPage(),
      ),
    );
  }

  route() async {
    Naviagate();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
