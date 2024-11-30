import 'package:bitmanny/login_screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
          },
            child: Icon(Icons.arrow_back, color: Colors.white,)),
        centerTitle: true,
        title: Text(
          'Forgot Password',
          style: GoogleFonts.poppins(
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Please enter your email that you use to sign up to CryptoCoin', style: GoogleFonts.poppins(fontSize: 16.sp, color: Colors.grey.shade600),),
              SizedBox(height: 30.h),
              Text('Email Address', style: GoogleFonts.poppins(fontSize: 16.sp, color: Colors.grey, fontWeight: FontWeight.w500),),
              SizedBox(height: 10.h),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: 'Enter your email address',
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
              SizedBox(height: 80.h),
              Container(
                width: 360.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Text('Next', style: GoogleFonts.poppins(fontSize: 18.sp, color: Colors.black, fontWeight: FontWeight.w500),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
