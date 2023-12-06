import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class INVITEFRND extends StatelessWidget {
  const INVITEFRND({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_circle_down_outlined))
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset(
            "assets/images/Coins-rafiki.png",
            height: 280,
            width: 280,
          ),
          Text(
            "Earn ₹100",
            style: TextStyle(
                color: Color(0xFF151940),
                fontSize: 46,
                fontFamily: 'gilroy',
                fontWeight: FontWeight.w400,
                height: 0.03),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Invite your friend and you can earn up to ₹100 for every 5 friends who transfer over ₹400",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF151940)),
          ),
          SizedBox(
            height: 30,
          ),
          Text("Term and Condition"),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 73,
            width: 332,
            decoration: BoxDecoration(
                color: Color(0xFFFF897E),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 35, top: 5, right: 10),
              title: Text(
                "Invite friends now",
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
          )
        ]),
      ),
    );
  }
}
