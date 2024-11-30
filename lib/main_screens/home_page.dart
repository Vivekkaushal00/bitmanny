import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  List<String> currency = [
    'BTC/USDT ',
    'ETH/USDT ',
    'LBK/USDT ',
  ];

  List<String> percent = [
    '24.55%',
    '24.55%',
    '24.55%',
  ];

  List<String> rate = [
    '19500.57',
    '19500.57',
    '19500.57',
  ];

  List<String> signrate = [
    '\$ 19500.5700',
    '\$ 19500.5700',
    '\$ 19500.5700',
  ];

  List<bool> isprofit = [
    false,
    false,
    true,
  ];

  List<String> icons = [
    'assets/icons/referral.svg',
    'assets/icons/etf.svg',
    'assets/icons/reward.svg',
    'assets/icons/earn.svg',
    'assets/icons/deposit.svg',
    'assets/icons/support.svg',
  ];

  List<String> iconsname = [
    'Referral',
    'ETF',
    'Reward',
    'Earn',
    'Deposit',
    'Support'
  ];

  List<String> pair = ['Sweat', 'APE', 'APE'];

  List<String> pair1 = [
    ' /USDT',
    ' /USDT',
    ' /USDT',
  ];

  List<String> lastprice = ['0.02564458', '2.56448313', '0.12548755'];

  List<bool> change = [false, true, true];

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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                    radius: 20
                  ),
                  SizedBox(width: 10.w),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10.w),
                        SvgPicture.asset('assets/icons/search.svg', width: 20.w, height: 18.h,),
                        SizedBox(width: 5.w),
                        const Expanded(child: TextField(
                          decoration: InputDecoration(
                            hintText: 'search',
                            hintStyle: TextStyle(color: Colors.white54),
                            border: InputBorder.none
                          ),
                          style: TextStyle(color: Colors.white),
                        )),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.asset('assets/icons/clear.svg', width: 15.w, height: 15.h,),
                        ),
                      ],
                    ),
                  ),),
                  SizedBox(width: 10.w),
                  SvgPicture.asset('assets/icons/notification.svg'),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                child: Image.asset('assets/images/trade.png',
                fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/icons/speaker.svg'),
                  Text('FLIX [FLIP Token] will be listed on LBank Innovation...',
                      style: GoogleFonts.roboto(
                          color: Colors.white, fontSize: 12.sp)),
                  SvgPicture.asset('assets/icons/drag.svg')
                ],
              ),
              Divider(color: Colors.grey.shade700),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(currency.length, (index) {
                    return widget2(
                        currency: currency[index],
                        percent: percent[index],
                        rate: rate[index],
                        signrate: signrate[index],
                        isprofit: isprofit[index]);
                  }),
                ),
              ),
              Divider(color: Colors.grey.shade700),
              Wrap(
                direction: Axis.horizontal,
                spacing: 32.w,
                runSpacing: 10,
                children: List.generate(
                  icons.length,
                    (index) {
                    return widget4(icons: icons[index], iconsname: iconsname[index]);
                    }
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: double.infinity,
                color: const Color(0xff282B35),
                padding: EdgeInsets.zero,
                child: TabBar(
                  controller: _tabController,
                  dividerColor: Colors.transparent,
                  labelStyle: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w600),
                  physics: const ScrollPhysics(),
                  indicatorColor: Colors.yellow,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  labelColor: Colors.yellow,
                  padding: EdgeInsets.zero,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 15),
                  tabs: const [
                    Tab(text: 'Weekly Stars'),
                    Tab(text: 'Top Gainers'),
                    Tab(text: 'ETF Gainers'),
                    Tab(text: 'New'),
                    Tab(text: 'Present'),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pair',
                    style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Text(
                    'Last Price',
                    style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Text(
                    'Change',
                    style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Container(
                width: double.infinity,
                height: 200.h,
                child: Column(
                    children: List.generate(
                      pair.length,
                          (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: widget3(
                              pair: pair[index],
                              pair1: pair1[index],
                              lastprice: lastprice[index],
                              change: change[index]),
                        );
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget widget2(
      {required String currency,
        required String percent,
        required String rate,
        required String signrate,
        required bool isprofit}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: currency,
              style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            TextSpan(
              text: percent,
              style: GoogleFonts.poppins(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  color: isprofit ? Colors.green : Colors.white),
            )
          ]),
        ),
        Text(rate,
            style: GoogleFonts.poppins(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: isprofit ? Colors.green : Colors.redAccent)),
        Text(signrate,
            style: GoogleFonts.poppins(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: Colors.blueAccent)),
      ],
    );
  }

  Widget widget3(
      {required String pair,
        required String pair1,
        required String lastprice,
        required bool change}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: pair,
                  style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              TextSpan(
                  text: pair1,
                  style: GoogleFonts.roboto(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey))
            ])),
        Text(lastprice,
            style: GoogleFonts.roboto(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
        Container(
          width: 75.w,
          height: 25.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: change ? Colors.redAccent : Colors.green),
          child: Center(
              child: Text(
                '+90.65',
                style: TextStyle(color: Colors.white, fontSize: 12.sp),
              )),
        )
      ],
    );
  }


  Widget widget4({required String icons, required String iconsname}) {
    return Container(
      child: Column(
        children: [
          Container(
              width: 35.w,
              height: 35.h,
              child: SvgPicture.asset(icons)),
          Text(iconsname,
              style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white))
        ],
      ),
    );
  }
}
