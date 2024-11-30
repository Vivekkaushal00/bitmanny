import 'dart:async';
import 'package:bitmanny/onboarding/onboarding_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Onboarding1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: double.infinity,
            child: Image.asset('assets/images/logo.png')
          ),
        ),
      ),
    );
  }
}
