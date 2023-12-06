import 'package:finity_app/drawerPage/drawer_screen.dart';
import 'package:finity_app/widgets/list_for_bnkpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankPage extends StatelessWidget {
  const BankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      // drawer: Navbar(),
      appBar: AppBar(actions: [Icon(Icons.more_horiz)]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F6FA),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Bank USA",
                    style: TextStyle(
                      color: Color(0xFF151940),
                      fontSize: 52,
                      fontFamily: 'gilroy',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Text(
                    "Your BDT Account",
                    style: GoogleFonts.inter(
                      color: Color(0xFF151940),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.45,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Receipient type : Private',
                    style: GoogleFonts.inter(
                      color: Color(0xFF151940),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.45,
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              OtherDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
