import 'package:finity_app/pages/splashOnboradPage/onborad02.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoradPage extends StatelessWidget {
  const OnBoradPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Get.to(BoradPage02());
                },
                child: Text(
                  "S K I P",
                  style: GoogleFonts.inter(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              )),
          Image.asset(
            "assets/images/savings.png",
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Take hold of your finances",
              style: TextStyle(
                  fontFamily: "gilroy",
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF151940)),
            ),
          ),
          Text(
            "Running your finances is easier with xyz",
            style: GoogleFonts.inter(fontSize: 18, color: Colors.black),
          ),
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("1/3"),
                ElevatedButton(
                  onPressed: () {
                    Get.to(BoradPage02());
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 12),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF314BCE),
                    shadowColor: Color(0xFF314BCE),
                    elevation: 10,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
