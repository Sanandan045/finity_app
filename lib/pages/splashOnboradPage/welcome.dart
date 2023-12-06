import 'package:finity_app/pages/auth/createac.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF314BCE),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          ClipOval(
            child: Image.asset(
              "assets/images/mnybg.jpeg",
              height: 250,
              width: 250,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Welcome",
              style: TextStyle(
                  fontFamily: "gilroy",
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          Text(
            "Stay on top by effortlessly tracking your subscriptions & bills",
            style: GoogleFonts.inter(fontSize: 18, color: Colors.white),
          ),
          SizedBox(
            height: 50,
          ),
          CircleAvatar(
              radius: 30,
              child: IconButton(
                  onPressed: () {
                    Get.to(CreateAccountPage());
                  },
                  icon: Icon(Icons.forward_sharp)))
        ]),
      ),
    );
  }
}
