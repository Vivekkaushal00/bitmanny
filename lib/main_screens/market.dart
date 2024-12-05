import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Markets',
                  style: GoogleFonts.poppins(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
              SizedBox(height: 20.h),
              TabBar(
                indicatorColor: Colors.transparent,
                controller: _tabController,
                physics: const ScrollPhysics(),
                padding: EdgeInsets.zero,
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                dividerColor: Colors.transparent,
                labelColor: Colors.yellow,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff2b2b2b),
                ),
                indicatorWeight: 0,
                tabs: const [
                  Tab(text: 'All Assets'),
                  Tab(text: 'Favourites'),
                  Tab(text: 'Top Gainers'),
                  Tab(text: 'ETF Gainers'),
                  Tab(text: 'New'),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 50.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade800),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Hot',
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)),
                        SizedBox(width: 2.w),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                          size: 15.sp,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/icons/bitcoin.svg',
                      width: 36.w, height: 36.h),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bitcoin',
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Text(
                        'BTC',
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(width: 50.w),
                  SizedBox(
                    width: 60.w,
                    height: 20.h,
                    child: Sparkline(
                      data: const [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0],
                      lineWidth: 2,
                      lineColor: const Color(0xff00C566),
                    ),
                  ),
                  SizedBox(width: 30.w),
                  Column(
                    children: [
                      Text(
                        '\$46.625,32',
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        '24,55%',
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.green),
                      ),
                    ],
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
