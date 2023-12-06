import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConvertPage extends StatelessWidget {
  const ConvertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Convert',
              style: TextStyle(
                color: Color(0xFF151940),
                fontSize: 48,
                fontFamily: 'gilroy',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'You  have  ',
                    style: TextStyle(
                      color: Color(0xFF151940),
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: '4930 EUR',
                    style: TextStyle(
                      color: Color(0xFF151940),
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      color: Color(0xFF151940),
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'in your balance',
                    style: TextStyle(
                      color: Color(0xFF151940),
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 127,
                  height: 134,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x268A959E),
                        blurRadius: 60,
                        offset: Offset(0, 30),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/flag02.png",
                        width: 60,
                        height: 60,
                      ),
                      Text(
                        "gfbn",
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'gilroy'),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.change_circle_rounded,
                  size: 60,
                ),
                Container(
                  width: 127,
                  height: 134,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x268A959E),
                        blurRadius: 60,
                        offset: Offset(0, 30),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/flag03.png",
                        width: 60,
                        height: 60,
                      ),
                      Text("gfbn")
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 322,
              height: 95,
              decoration: BoxDecoration(
                  color: Color(0xFFFF897E),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "1 USD = 0,80 EUR",
                      style: GoogleFonts.notoSans(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "- 0.22 past month",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'gilroy',
                          fontSize: 15),
                    )
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fee",
                  style: GoogleFonts.inter(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  "1.14 EUR",
                  style: GoogleFonts.inter(
                      fontSize: 15, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ammount Converted",
                  style: GoogleFonts.inter(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  "276.86 EUR",
                  style: GoogleFonts.inter(
                      fontSize: 15, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rate",
                  style: GoogleFonts.inter(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  "0.22",
                  style: GoogleFonts.inter(
                      fontSize: 15, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xFFFF897E),
                  borderRadius: BorderRadius.circular(8)),
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 35, top: 5, right: 10),
                title: Text(
                  "Continue",
                  style: GoogleFonts.inter(
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
