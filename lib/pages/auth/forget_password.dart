import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 60,
        ),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Forget Password",
              style: TextStyle(
                fontFamily: 'gilroy',
                color: Colors.black,
                fontSize: 40,
              ),
            ),
            Text(
              "Please enter your email address or\nphone number to reset your password",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 332,
              height: 48,
              child: TextField(
                style: GoogleFonts.inter(
                    color: Color(0xFF314BCE),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xFFF5F6FA))),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF314BCE)),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF5F6FA),
                    hintText: "Enter Your Email Address",
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Send",
                style: TextStyle(
                    fontFamily: 'gilroy', fontSize: 20, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF897E),
                shadowColor: Color(0xFF314BCE),
                elevation: 10,
                minimumSize: Size(350, 52),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
