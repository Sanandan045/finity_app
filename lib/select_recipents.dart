import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Selct_Recipent_Page extends StatelessWidget {
  const Selct_Recipent_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Recipients",
                style: TextStyle(
                  color: Color(0xFF151940),
                  fontSize: 42,
                  fontFamily: 'gilroy',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 332,
                height: 70,
                decoration: ShapeDecoration(
                  color: Color(0xFFFF897E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: ListTile(
                  title: Text(
                    "Add New Accounts",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.45,
                    ),
                  ),
                  trailing: Container(
                    width: 40,
                    height: 40.37,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "MY ACCOUNTS",
                style: GoogleFonts.inter(
                  color: Color(0xFF151940),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.05,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.greenAccent[400],
                    radius: 25,
                    child: Image.asset(
                      "assets/images/bank01.png",
                    ),
                  ),
                  title: Text(
                    "AB Bank",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  subtitle: Text(
                    "Account ending with 1252",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.grey),
                  ),
                  trailing: Icon(Icons.arrow_forward)),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.greenAccent[400],
                    radius: 25,
                    child: Image.asset(
                      "assets/images/bank02.png",
                    ),
                  ),
                  title: Text(
                    "AB Bank",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  subtitle: Text(
                    "Account ending with 1252",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                  trailing: Icon(Icons.arrow_forward)),
              SizedBox(
                height: 20,
              ),
              Text(
                "ADD NEW CONTACTS",
                style: GoogleFonts.inter(
                  color: Color(0xFF151940),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.05,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color(0xFFF5F6FA),
                height: 264,
                width: 332,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 46,
                      width: 303,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "Search for contac....",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w300, color: Colors.grey),
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.greenAccent[400],
                          radius: 25,
                          child: Image.asset(
                            "assets/images/pic01.png",
                          ),
                        ),
                        title: Text(
                          "AB Bank",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text(
                          "+000 00 0000",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Invite friend",
                            style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF314BCE)),
                        )),
                    ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.greenAccent[400],
                          radius: 25,
                          child: Image.asset(
                            "assets/images/pic02.png",
                          ),
                        ),
                        title: Text(
                          "AB Bank",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text(
                          "+000 00 0000",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Invite friend",
                            style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFF897E)),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
