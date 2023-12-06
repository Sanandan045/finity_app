import 'package:finity_app/drawerPage/drawer_screen.dart';
import 'package:finity_app/widgets/listvala.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountDeatailsPage extends StatelessWidget {
  const AccountDeatailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      drawer: Navbar(),
      appBar: AppBar(actions: [Icon(Icons.settings)]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(children: [
            Container(
              width: 350,
              height: 250,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F6FA),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Account Details",
                  style: TextStyle(
                    color: Color(0xFF151940),
                    fontSize: 40,
                    fontFamily: 'gilroy',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 280,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Transfered",
                              style: GoogleFonts.inter(
                                color: Color(0xFF151940),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.45,
                              ),
                            )),
                        VerticalDivider(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Received",
                              style: GoogleFonts.inter(
                                color: Color(0xFF151940),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.45,
                              ),
                            ))
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Share Details",
                  style: GoogleFonts.inter(
                    color: Color(0xFF314BCE),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: -0.45,
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Recents transfer",
                style: GoogleFonts.inter(
                  color: Color(0xFF151940),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: -0.45,
                )),
            SizedBox(
              height: 20,
            ),
            listvala()
          ]),
        ),
      ),
    );
  }
}
