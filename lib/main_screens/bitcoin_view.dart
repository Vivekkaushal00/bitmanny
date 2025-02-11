import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BitcoinView extends StatefulWidget {
  const BitcoinView({super.key});

  @override
  State<BitcoinView> createState() => _BitcoinViewState();
}

class _BitcoinViewState extends State<BitcoinView> {
  final List<CandleData> data = [
    CandleData(DateTime(2024, 11, 10, 18, 0), 4000, 4200, 3950, 4100),
    CandleData(DateTime(2024, 11, 10, 19, 0), 4100, 4300, 4050, 4200),
    // Add more data points as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    size: 20,
                    color: Color(0xffA7AEBF),
                  ),
                  Text(
                    'Bitcoin',
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SvgPicture.asset('assets/icons/star.svg',
                      width: 16.w, height: 16.h),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/bitcoin.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'BTC',
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff787A8D)),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '44.826,12 \$',
                    style: GoogleFonts.poppins(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Container(
                    width: 65.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade800),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.green,
                          size: 15.sp,
                        ),
                        SizedBox(width: 3.w),
                        Text(
                          '10.5 %',
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Column(
                children: [
                  SfCartesianChart(
                    primaryXAxis: const DateTimeAxis(),
                    primaryYAxis: const NumericAxis(),
                    backgroundColor: Colors.white,
                    series: <CandleSeries<CandleData, DateTime>>[
                      CandleSeries<CandleData, DateTime>(
                        dataSource: data,
                        xValueMapper: (CandleData data, _) => data.time,
                        lowValueMapper: (CandleData data, _) => data.low,
                        highValueMapper: (CandleData data, _) => data.high,
                        openValueMapper: (CandleData data, _) => data.open,
                        closeValueMapper: (CandleData data, _) => data.close,
                      ),
                    ],
                    indicators: [
                      EmaIndicator(
                          seriesName: 'EMA',
                          period: 5,
                          name: 'EMA')
                    ],
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

class CandleData {
  final DateTime time;
  final double open;
  final double high;
  final double low;
  final double close;

  CandleData(this.time, this.open, this.high, this.low, this.close);
}
