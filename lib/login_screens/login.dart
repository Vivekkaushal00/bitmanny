import 'package:bitmanny/login_screens/forgot.dart';
import 'package:bitmanny/main.dart';
import 'package:flutter/material.dart';
import 'package:bitmanny/onboarding/onboarding_1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          'Log in',
          style: GoogleFonts.poppins(
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Onboarding1(initialPage: 4),
                ),
              );
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email Address',
                style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: 'Enter your email address',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Color(0xff494D58),
                    ),
                    fillColor: Color(0xff21242D),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              SizedBox(height: 25.h),
              Text(
                'Password',
                style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      size: 30,
                    ),
                    hintText: 'Enter your password',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Color(0xff494D58),
                    ),
                    fillColor: Color(0xff21242D),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              SizedBox(height: 25.h),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Forgot()));
                  },
                  child: Text(
                    'Forgot password?',
                    style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: Colors.yellow,
                        fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: 100.h),
              Container(
                width: 360.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                  'Log in',
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
