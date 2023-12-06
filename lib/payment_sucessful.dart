import 'package:finity_app/transaction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSucessFul extends StatelessWidget {
  const PaymentSucessFul({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_upward_rounded))
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset(
            "assets/images/Payment Information-bro.png",
            width: 230,
            height: 230,
          ),
          Text(
            " Payment\nSuccessful",
            style: TextStyle(
              color: Color(0xFF151940),
              fontSize: 44,
              fontFamily: 'gilroy',
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "Your Payment was successful. Make this user in your favourite list",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF151940)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 332,
            height: 73,
            decoration: ShapeDecoration(
              color: Color(0xFFFF897E),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: ListTile(
              leading: Container(
                width: 44,
                height: 42.37,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/pic01.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              title: Text(
                "Krish Kandall",
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: -0.45,
                ),
              ),
              subtitle: Text(
                "India",
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  height: 0,
                  letterSpacing: -0.45,
                ),
              ),
              trailing: Container(
                width: 44,
                height: 42.37,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Icon(Icons.favorite_outline),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Showed Arrived By",
            style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF7F8192),
                letterSpacing: 1.2),
          ),
          Text(
            "27 APRIL 2020",
            style: GoogleFonts.inter(
                color: Color(0xFF151940),
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Get.to(TransactionPage());
            },
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
                  "Track",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 0.05,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
