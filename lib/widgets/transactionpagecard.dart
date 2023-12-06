import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BalCard extends StatelessWidget {
  const BalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            width: 138,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0x19304ACE),
                  blurRadius: 30,
                  offset: Offset(0, 15),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  child: Image.asset("assets/images/pic01.png"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1842",
                  style: GoogleFonts.poppins(
                      color: Color(0xFF020000),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "URO Bal",
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
