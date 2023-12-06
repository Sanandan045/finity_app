import 'package:finity_app/widgets/uploadfile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoVerifyPage extends StatelessWidget {
  const InfoVerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_sharp)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Identity\nVerification",
            style: TextStyle(
              color: Color(0xFF020000),
              fontSize: 46,
              fontFamily: 'gilroy',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Please Verify Your identity by uploading your ppassport or driving licence",
            style: GoogleFonts.inter(
              color: Color(0xFF151940),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              height: 0,
              letterSpacing: 0.05,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UploadCard(),
              SizedBox(
                width: 10,
              ),
              UploadCard()
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            "PRIVACY  >",
            style: GoogleFonts.inter(
              color: Color(0xFF7F8192),
              fontSize: 15,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.55,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              width: 185,
              height: 56,
              decoration: ShapeDecoration(
                color: Color(0xFF314BCE),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Center(
                child: Text(
                  "Verify",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'gilroy', fontSize: 20),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
