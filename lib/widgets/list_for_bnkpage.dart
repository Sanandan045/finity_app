import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtherDetails extends StatefulWidget {
  const OtherDetails({super.key});

  @override
  State<OtherDetails> createState() => _OtherDetailsState();
}

class _OtherDetailsState extends State<OtherDetails> {
  List<String> bnk = [
    "Account Holder",
    "Bank Name",
    "Email address",
    "Address",
    "Bank Code",
    "Account Number"
  ];

  List<String> personinfo = [
    "Domain holder",
    "Bank USA",
    "michealmoore@gmail.com",
    "123 Street/NYC",
    "1234567867",
    "098718989",
  ];

  List<Icon> ic = [
    Icon(Icons.person),
    Icon(Icons.account_balance),
    Icon(Icons.email),
    Icon(Icons.map_sharp),
    Icon(Icons.code),
    Icon(Icons.grid_3x3),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 54,
                height: 52,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19304ACE),
                      blurRadius: 30,
                      offset: Offset(0, 15),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: ic[index],
              ),
              title: Text(
                bnk[index],
                style: GoogleFonts.inter(
                  color: Color(0xFF151940),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              subtitle: Text(
                personinfo[index],
                style: GoogleFonts.inter(
                  color: Color(0xFFC4C4C4),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              ),
            );
          }),
    );
  }
}
