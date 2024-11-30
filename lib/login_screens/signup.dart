import 'package:bitmanny/login_screens/login.dart';
import 'package:bitmanny/login_screens/verification.dart';
import 'package:bitmanny/onboarding/onboarding_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final PageController _pageController = PageController();
  bool valuefirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('Sign up', style: GoogleFonts.poppins(fontSize: 18.sp, color: Colors.white, fontWeight: FontWeight.w600),),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding1(initialPage: 4)));
          },
            child: const Icon(Icons.arrow_back, color: Colors.white,)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email Address', style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.grey, fontWeight: FontWeight.w500),),
              SizedBox(height: 10.h),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: 'Enter your email address',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 16.sp, color: const Color(0xff494D58),
                    ),
                    fillColor: const Color(0xff21242D),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
              SizedBox(height: 25.h),
              Text('Password',style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.grey, fontWeight: FontWeight.w500),),
              SizedBox(height: 10.h),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    suffixIcon: Icon(Icons.remove_red_eye,size: 30,),
                    hintText: 'Enter your password',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 16.sp, color: Color(0xff494D58),
                    ),
                    fillColor: Color(0xff21242D),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
              SizedBox(height: 10.h),
              Text('At least 8 characters with uppercase letters and numbers', style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.grey.shade600, fontWeight: FontWeight.w500),),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.yellow,
                      checkColor: Colors.black,
                      value: valuefirst,
                      onChanged: (bool ? value) {
                        setState(() {
                          valuefirst = value!;
                        });
                      }),
                  RichText(text: TextSpan(
                    text: 'Accept',
                    style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.grey.shade400,fontWeight: FontWeight.w400))),
                  RichText(text: TextSpan(
                    text: ' Terms of Use',
                    style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.yellow, fontWeight: FontWeight.w400))),
                  RichText(text: TextSpan(
                    text: ' &',
                    style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.grey.shade600, fontWeight: FontWeight.w400))),
                  RichText(text: TextSpan(
                    text: ' Privacy Policy',
                    style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.yellow, fontWeight: FontWeight.w400))),
                ],
              ),
              SizedBox(height: 70.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Verification()));
                },
                child: Container(
                  width: 360.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text('Sign up', style: GoogleFonts.poppins(fontSize: 18.sp, color: Colors.black, fontWeight: FontWeight.w500),)),
                ),
              ),
              SizedBox(height: 180.h),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(text: TextSpan(
                      text: 'Already have an account?',
                      style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.grey.shade600, fontWeight: FontWeight.w400))),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: RichText(text: TextSpan(
                        text: ' Log in!',
                        style: GoogleFonts.poppins(fontSize: 12.sp, color: Colors.yellow, fontWeight: FontWeight.w400))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
