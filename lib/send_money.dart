import 'package:finity_app/drawerPage/drawer_screen.dart';
import 'package:finity_app/payment_sucessful.dart';
import 'package:finity_app/widgets/sendtolist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SendMoneyPage extends StatelessWidget {
  const SendMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      drawer: Navbar(),
      appBar: AppBar(
          // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(children: [
            Row(
              children: [
                Container(
                  height: 42,
                  width: 150,
                  child: Center(
                      child: Text(
                    "Local",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFF1F2F7),
                      shape: BoxShape.rectangle),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 42,
                  width: 150,
                  child: Center(
                      child: Text(
                    "International",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFFF897E),
                      shape: BoxShape.rectangle),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 332,
              height: 243,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F6FA),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "You are Sending",
                  style: TextStyle(
                    color: Color(0xFF151940),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: -0.45,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "₹20,000",
                  style: TextStyle(
                    color: Color(0xFF151940),
                    fontSize: 60,
                    fontFamily: 'gilroy',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 80,
                  endIndent: 80,
                ),
                SizedBox(
                  height: 15,
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 332,
              height: 150,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F6FA),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Send To",
                      style: TextStyle(
                        color: Color(0xFF151940),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: 0.05,
                      ),
                    ),
                  ),
                  SendTo()
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'SHOULD BE DELIVERED BY',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF7F8192),
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.19,
                letterSpacing: 3.08,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '27 APRIL 2020',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF151940),
                fontSize: 22,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0.06,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(PaymentSucessFul());
                  },
                  child: Container(
                    height: 52,
                    width: 150,
                    child: Center(
                        child: Text(
                      "Transfer",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF314BCE),
                        shape: BoxShape.rectangle),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 52,
                  width: 150,
                  child: Center(
                      child: Text(
                    "Cancel",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFF5F6FA),
                      shape: BoxShape.rectangle),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
