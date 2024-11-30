import 'package:bitmanny/main_screens/add_screen.dart';
import 'package:bitmanny/main_screens/home_page.dart';
import 'package:bitmanny/main_screens/market.dart';
import 'package:bitmanny/main_screens/portfolio.dart';
import 'package:bitmanny/main_screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {

  int currentTab = 0;
  final List<Widget> screens = [
    const HomePage(),
    const Market(),
    const AddScreen(),
    const Portfolio(),
    const Setting(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(side: BorderSide(color: Colors.yellow)),
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.add, color: Colors.white,),
          onPressed: (){}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff262932),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 80.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      minWidth: 40.w,
                      onPressed: (){
                        setState(() {
                          currentScreen = const HomePage();
                          currentTab = 0;
                        });
                      },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/home.svg', color: currentTab == 0 ? Colors.yellow : Colors.grey),
                        Text('Home', style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w400, color: currentTab == 0 ? Colors.yellow : Colors.grey))
                      ],
                    ),
                  ),
                  MaterialButton(
                      minWidth: 40.w,
                      onPressed: (){
                        setState(() {
                          currentScreen = const Market();
                          currentTab = 1;
                        });
                      },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/market.svg', color: currentTab == 1 ? Colors.yellow : Colors.grey),
                        Text('Market', style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w400, color: currentTab == 2 ? Colors.yellow : Colors.grey))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: (){
                      setState(() {
                        currentScreen = const Portfolio();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/portfolio.svg', color: currentTab == 3 ? Colors.yellow : Colors.grey),
                        Text('Portfolio', style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w400, color: currentTab == 3 ? Colors.yellow : Colors.grey))
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: (){
                      setState(() {
                        currentScreen = const Setting();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/settings.svg', color: currentTab == 4 ? Colors.yellow : Colors.grey),
                        Text('Settings', style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w400, color: currentTab == 4 ? Colors.yellow : Colors.grey))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
