import 'package:finity_app/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifiyPage extends StatelessWidget {
  const VerifiyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF314BCE),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ClipRRect(
              child: Image.asset(
                "assets/images/conformed.png",
                height: 192,
                width: 192,
              ),
            ),
            Text(
              "Welcome Michael!",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'gilroy',
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 327,
              height: 50,
              child: Text(
                "It seems everything went well and your\n app is ready to work with you",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(MainScreenPage());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(185, 56),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      fontFamily: 'gilroy', color: Colors.black, fontSize: 16),
                ))
          ]),
        ),
      ),
    );
  }
}
