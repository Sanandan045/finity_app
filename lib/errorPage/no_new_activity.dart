import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoActivity extends StatelessWidget {
  const NoActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF314BCE),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/images/undraw_Check_boxes_re_v40f.png",
              width: 150,
              height: 150,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "No New Activtiy ",
              style: TextStyle(
                  fontFamily: 'gilroy', fontSize: 36, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hmm. Looks like your location access is turned off. ",
              style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 185,
              height: 56,
              decoration: ShapeDecoration(
                color: Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Center(
                child: Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 0.05,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
