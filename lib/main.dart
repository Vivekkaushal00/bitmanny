import 'package:bitmanny/bottom_bar/bottom_bar.dart';
import 'package:bitmanny/main_screens/bitcoin_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return const MaterialApp(
          title: 'Bitmanny',
          debugShowCheckedModeBanner: false,
          home: AppBottomBar(),
        );
      },
      // child: Onboarding1(),
    );
  }
}