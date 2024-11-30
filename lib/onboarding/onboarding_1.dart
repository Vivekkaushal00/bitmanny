import 'package:bitmanny/login_screens/login.dart';
import 'package:bitmanny/login_screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding1 extends StatefulWidget {
   Onboarding1({super.key, this.initialPage = 0});

   int? initialPage;

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  late PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialPage ?? 0);
  }

  List<String> titles = [
    "Welcome to \nBitManny",
    "Transaction \nSecutrity",
    "Fast and Reliable \nMarket Update",
    "Fast and Flexible \nTrading"
  ];
  List<String> images = [
    "assets/onboarding1.png",
    "assets/images/onboarding1.png",
    "assets/images/onboarding2.png",
    "assets/images/onboarding3.png"
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            pageIndex == 3 ? SizedBox(height: 10.h): GestureDetector(
              onTap: () {
                _pageController.animateToPage(3, duration: const Duration(milliseconds: 1), curve: Curves.easeInOut);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Skip',
                      style: GoogleFonts.poppins(
                          color: Colors.yellow,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Expanded(
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              itemCount: titles.length,
              onPageChanged: (value) {
                pageIndex = value;
                setState(() {});
              },
              itemBuilder: (context, index) {
                return widget1(
                    image: index == 0 ? null : images[index],
                    title: index == 0 ? null : titles[index]);
              },
            )),
            pageIndex == titles.length - 1
                ? Container(
                    margin: EdgeInsets.only(bottom: 50.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()));
                          },
                          child: Container(
                            width: 150.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.yellow, width: 2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                                child: Text(
                              'Sign up',
                              style: GoogleFonts.poppins(
                                  fontSize: 18.sp,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Container(
                            width: 150.w,
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
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    margin: EdgeInsets.only(bottom: 50.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothPageIndicator(
                          controller: _pageController,
                          count: 4,
                          effect: const ExpandingDotsEffect(
                              dotColor: Colors.white,
                              activeDotColor: Colors.yellow,
                              spacing: 5,
                              dotWidth: 10,
                              dotHeight: 5),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_pageController.page! < 2) {
                              _pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                            } else {
                              _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                            }
                          },
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.yellow,
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              size: 40,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }

  Widget widget1({required String? image, required String? title}) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image == null
              ? SizedBox(
                  height: 300.h,
                  width: double.infinity,
                )
              : SizedBox(
                  height: 300.h,
                  width: double.infinity,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
          SizedBox(
            height: 20.h,
          ),
          title == null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Welcome to',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 32.sp),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Bit",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 32.sp),
                          ),
                          TextSpan(
                            text: 'manny',
                            style: GoogleFonts.poppins(
                                color: Colors.yellow, fontSize: 32.sp),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              : Text(
                  title,
                  textAlign: TextAlign.left,
                  style:
                      GoogleFonts.poppins(color: Colors.white, fontSize: 32.sp),
                )
        ],
      ),
    );
  }
}
