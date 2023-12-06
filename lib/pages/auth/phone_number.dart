import 'package:finity_app/pages/auth/login.dart';
import 'package:finity_app/pages/auth/verify_number.dart';
import 'package:finity_app/pages/auth/verified.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneNumberPage extends StatelessWidget {
  const PhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          left: 30,
          right: 20,
        ),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Register",
              style: TextStyle(
                  fontFamily: "gilroy",
                  fontWeight: FontWeight.w500,
                  fontSize: 32),
            ),
            SizedBox(
              height: 40,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Please Enter ',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 16)),
                  TextSpan(
                    text: 'your phone Number',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text: ' and ',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 16)),
                  TextSpan(
                      text: " location ",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: " so can i verify you  ",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 16))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Enter Your Location",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 332,
              height: 48,
              child: TextField(
                style: GoogleFonts.inter(
                    color: Color(0xFF314BCE),
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xFFF5F6FA))),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF314BCE)),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF5F6FA),
                    prefixIcon: Icon(Icons.location_city_sharp),
                    hintText: "Choose your Location",
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Enter Your phone Number",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 332,
              height: 48,
              child: TextField(
                keyboardType: TextInputType.number,
                style: GoogleFonts.inter(
                    color: Color(0xFF314BCE),
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xFFF5F6FA))),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF314BCE)),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF5F6FA),
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(VerifiyNumber());
              },
              child: Text(
                "Next",
                style: TextStyle(
                    fontFamily: 'gilroy',
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF897E),
                shadowColor: Color(0xFF314BCE),
                elevation: 10,
                minimumSize: Size(320, 52),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Already have an account?",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF151940)),
            ),
            TextButton(
                onPressed: () {
                  Get.to(LoginPage());
                },
                child: Text(
                  "L O G I N  > ",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF314BCE)),
                ))
          ]),
        ),
      ),
    );
  }
}
