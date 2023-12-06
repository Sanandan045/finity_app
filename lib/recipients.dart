import 'package:finity_app/select_recipents.dart';
import 'package:finity_app/widgets/listvala.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Recipients_Page extends StatefulWidget {
  const Recipients_Page({super.key});

  @override
  State<Recipients_Page> createState() => _Recipients_PageState();
}

class _Recipients_PageState extends State<Recipients_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recipients",
                    style: TextStyle(
                      color: Color(0xFF151940),
                      fontFamily: 'gilroy',
                      fontSize: 40,
                    ),
                  ),
                  Icon(Icons.search)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Selct_Recipent_Page());
                },
                child: Container(
                  width: 332,
                  height: 73,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFF897E),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: ListTile(
                    title: Text(
                      "My Personal Accounts(4)",
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
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "RECENT RECEIPTS",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF151940)),
              ),
              SizedBox(
                height: 20,
              ),
              listvala(),
              SizedBox(
                height: 20,
              ),

              // Positioned(
              //     top: 20,
              //     left: 20,
              //     child: CircleAvatar(
              //       radius: 20,
              //       backgroundColor: Colors.amber,
              //     )),
            ],
          ),
        ),
      ),
    );
  }
}
