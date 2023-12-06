import 'package:finity_app/pages/splashOnboradPage/onborad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF897E),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // SizedBox(
          //   height: 150,
          // ),
          Text(
            "Finity",
            style: TextStyle(
                fontFamily: "gilroy",
                fontSize: 65,
                fontWeight: FontWeight.w400,
                color: Color(0xFFFFFFFF)),
          ),
          Text(
            "Money Transfer, Wallet & Finance UI Kit",
            style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xFFFFFFFF)),
          ),
          SizedBox(
            height: 70,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(OnBoradPage());
            },
            child: Text(
              "Get Started",
              style: TextStyle(
                  fontFamily: 'gilroy',
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                  color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF314BCE),
              shadowColor: Color(0xFF314BCE),
              elevation: 10,
              minimumSize: Size(320, 52),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          )
        ]),
      ),
    );
  }
}
