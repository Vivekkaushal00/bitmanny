import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenViews extends StatefulWidget {
  const ScreenViews({super.key});

  @override
  State<ScreenViews> createState() => _ScreenViewsState();
}

class _ScreenViewsState extends State<ScreenViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [SvgPicture.asset('assets/icons/notification.svg')],
              ),
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Johny Smith',
                        style: GoogleFonts.poppins(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                    Container(
                      width: 100.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: const Color(0xff21242D),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Verified',
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.yellowAccent),
                          ),
                          SvgPicture.asset(
                            'assets/icons/verify.svg',
                            height: 20.h,
                            width: 20.w,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 100.w),
                Text(
                  'ID:7734',
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(width: 5.w),
                const Icon(
                  Icons.copy,
                  color: Colors.white,
                  size: 15,
                )
              ],
            ),
            SizedBox(height: 20.h),
            Container(
              height: 50.h,
              decoration: BoxDecoration(
                  color: const Color(0xff21242D),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.card_giftcard,
                    color: Colors.yellowAccent,
                    size: 20,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Invite friends. Earn Crypto Together!',
                    style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.yellowAccent),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'App Settings',
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xff21242D),
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/user.svg',
                          width: 24.w,
                          height: 24.h,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Profile Settings',
                          style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/payment.svg',
                            width: 24.w, height: 24.h),
                        SizedBox(width: 10.w),
                        Text(
                          'Payment Methods',
                          style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
