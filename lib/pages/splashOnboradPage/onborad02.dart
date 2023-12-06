import 'package:finity_app/pages/splashOnboradPage/onborad03.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BoradPage02 extends StatelessWidget {
  const BoradPage02({super.key});

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
              child: Text(
                "S K I P",
                style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              )),
          Image.asset(
            "assets/images/digitalcurrency.png",
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "See where your money is going",
              style: TextStyle(
                  fontFamily: "gilroy",
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF151940)),
            ),
          ),
          Text(
            "Stay on top by effortlessly tracking your subscriptions & bills",
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
                Text("2/3"),
                ElevatedButton(
                  onPressed: () {
                    Get.to(BoradPage03());
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
