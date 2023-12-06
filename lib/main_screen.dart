import 'package:finity_app/drawerPage/drawer_screen.dart';
import 'package:finity_app/invite_frnd.dart';
import 'package:finity_app/recipients.dart';
import 'package:finity_app/send_money.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Navbar(),
      appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 332,
                  height: 135,
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F6FA),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 140,
                  child: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/pic01.png")),
                ),
                SizedBox(
                  height: 40,
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Text(
                    "Domhnall Gleeson",
                    style: TextStyle(
                      color: Color(0xFF020000),
                      fontSize: 26,
                      fontFamily: 'gilroy',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                    top: 80,
                    left: 80,
                    child: Text(
                      "account ending with 1545",
                      style: GoogleFonts.inter(
                        color: Color(0xFF151940),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.45,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                    backgroundColor: Color(0xFFF4F5F9),
                    radius: 25,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.transform))),
                CircleAvatar(
                    backgroundColor: Color(0xFFF4F5F9),
                    radius: 25,
                    child: IconButton(
                        onPressed: () {
                          Get.to(SendMoneyPage());
                        },
                        icon: Icon(Icons.person_2_rounded))),
                CircleAvatar(
                    backgroundColor: Color(0xFFF4F5F9),
                    radius: 25,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_bag_rounded))),
                CircleAvatar(
                    backgroundColor: Color(0xFFF4F5F9),
                    radius: 25,
                    child: IconButton(
                        onPressed: () {
                          Get.to(Recipients_Page());
                        },
                        icon: Icon(Icons.receipt_long_rounded))),
                CircleAvatar(
                    backgroundColor: Color(0xFFF4F5F9),
                    radius: 25,
                    child: IconButton(
                        onPressed: () {
                          Get.to(INVITEFRND());
                        },
                        icon: Icon(Icons.discount_rounded))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 65,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xFFFF897E),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "  Salary \n ₹ 255,500",
                    style: TextStyle(
                        fontFamily: 'gilroy',
                        color: Colors.white,
                        fontSize: 16),
                  )),
                ),
                Container(
                  height: 65,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xFF314BCE),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "  Transfer \n ₹ 42,500",
                    style: TextStyle(
                        fontFamily: 'gilroy',
                        color: Colors.white,
                        fontSize: 16),
                  )),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Recent transactions",
              style: TextStyle(
                color: Color(0xFF020000),
                fontSize: 26,
                fontFamily: 'gilroy',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Color(0xFFF4F5F9),
                  radius: 25,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.account_balance))),
              title: Text(
                "Behance Project",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF151940)),
              ),
              subtitle: Text(
                "23 march 2021",
                style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Text(
                "₹4000",
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF151940)),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Color(0xFFF4F5F9),
                  radius: 25,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.account_balance))),
              title: Text(
                "ATM Withdraws",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF151940)),
              ),
              subtitle: Text(
                "BDT Account",
                style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Text(
                "₹3000",
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF151940)),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Color(0xFFF4F5F9),
                  radius: 25,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.account_balance))),
              title: Text(
                "Uber Monthly",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF151940)),
              ),
              subtitle: Text(
                "23 february 2021",
                style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Text(
                "₹1000",
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF151940)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
