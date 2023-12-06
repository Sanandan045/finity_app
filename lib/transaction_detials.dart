import 'package:finity_app/convert.dart';
import 'package:finity_app/drawerPage/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionInfoPage extends StatelessWidget {
  const TransactionInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      drawer: Navbar(),
      appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 176,
                width: 332,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F6FA),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "₹395,42.00",
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
              Positioned(
                left: 120,
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/flag01.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                  // bottom: 0,

                  child: Padding(
                padding: const EdgeInsets.only(top: 150, left: 70),
                child: Row(
                  children: [
                    Container(
                      width: 89,
                      height: 87,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFF897E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.send,
                                size: 40,
                                color: Colors.black,
                              ))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 89,
                      height: 87,
                      decoration: ShapeDecoration(
                        color: Color(0xFF314BCE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                          child: IconButton(
                              onPressed: () {
                                Get.to(ConvertPage());
                              },
                              icon: Icon(
                                Icons.call_made,
                                size: 40,
                                color: Colors.black,
                              ))),
                    ),
                  ],
                ),
              ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 70,
            width: 328,
            decoration: BoxDecoration(
                color: Color(0xFFFF897E),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 35, top: 5, right: 10),
              title: Text(
                "USD Transaction History",
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
          SizedBox(
            height: 30,
          ),
          Text(
            "USD Transaction History",
            style: TextStyle(
              color: Color(0xFF020000),
              fontSize: 20,
              fontFamily: 'gilroy',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 337,
            height: 86,
            decoration: ShapeDecoration(
              color: Color(0xFFF5F6FA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: ListTile(
              leading: Container(
                width: 54,
                height: 52,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/flag01.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              title: Text(
                "British Pound",
                style: TextStyle(
                  color: Color(0xFF151940),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: -0.45,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.forward_rounded)),
            ),
          ),
        ]),
      ),
    );
  }
}
