import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadCard extends StatelessWidget {
  const UploadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 149,
          height: 234,
          decoration: BoxDecoration(
              color: Color(0xFFF5F6FA),
              borderRadius: BorderRadius.circular(10)),
        ),
        Positioned(
          top: 13,
          left: 25,
          right: 25,
          child: Container(
            width: 99,
            height: 105,
            decoration: BoxDecoration(
                color: Color(0xFFD1D8F5),
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.ios_share_rounded,
                  size: 30,
                  color: Colors.black,
                )),
          ),
        ),
        Positioned(
            top: 140,
            bottom: 33,
            left: 33,
            child: Text(
              "Your \nPassport",
              style: GoogleFonts.poppins(
                color: Color(0xFF020000),
                fontSize: 24,
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.45,
              ),
            ))
      ],
    );
  }
}
