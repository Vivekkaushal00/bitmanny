import 'package:bitmanny/login_screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Verification', style: GoogleFonts.poppins(fontSize: 18.sp,  color: Colors.white, fontWeight: FontWeight.w600)),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup()));
          },
            child: const Icon(Icons.arrow_back, color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Code have been sent to your email', style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.grey.shade600, fontWeight: FontWeight.w400)),
              Text('johny@gmail.com', style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.w400)),
              SizedBox(height: 40.h),
              OtpTextField(
                numberOfFields: 4,
                showFieldAsBox: true,
                fieldHeight: 50.h,
                fieldWidth: 50.w,
                borderRadius: BorderRadius.circular(10),
                enabledBorderColor: const Color(0xffF5C249),
                focusedBorderColor: const Color(0xffF5C249),
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                textStyle: GoogleFonts.poppins(fontSize: 24.sp, color: Colors.white, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 30.h),
              Center(child: Text('00:26', style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.grey.shade400))),
              SizedBox(height: 10.h),
              Center(child: Text('Resend Code', style: GoogleFonts.poppins(fontSize: 16.sp, color: Colors.yellow, fontWeight: FontWeight.w600),)),
              SizedBox(height: 70.h),
              Container(
                width: 360.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Text('Verify', style: GoogleFonts.poppins(fontSize: 18.sp, color: Colors.black, fontWeight: FontWeight.w500),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
