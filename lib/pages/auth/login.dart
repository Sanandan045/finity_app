import 'package:finity_app/pages/auth/createac.dart';
import 'package:finity_app/pages/auth/forget_password.dart';
import 'package:finity_app/pages/auth/verified.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 90),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Log In",
              style: TextStyle(
                  fontFamily: 'gilroy',
                  fontSize: 36,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 42,
                  width: 150,
                  child: Center(
                      child: Text(
                    "Google",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFF5F6FA),
                      shape: BoxShape.rectangle),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 42,
                  width: 150,
                  child: Center(
                      child: Text(
                    "Facebook",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFF5F6FA),
                      shape: BoxShape.rectangle),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: Text("or")),
            SizedBox(
              height: 10,
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
              height: 20,
            ),
            SizedBox(
              width: 332,
              height: 48,
              child: TextField(
                obscureText: true,
                style: GoogleFonts.inter(
                    color: Color(0xFF314BCE),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xFFF5F6FA))),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF314BCE)),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF5F6FA),
                    hintText: "Password",
                    border: OutlineInputBorder()),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Get.to(ForgetPassword());
                  },
                  child: Text(
                    "Forget Password ?",
                    style: GoogleFonts.poppins(
                        color: Color(0xFFFA6D75),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(VerifiyPage());
              },
              child: Text(
                "Login",
                style: TextStyle(
                    fontFamily: 'gilroy',
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFAAADB7),
                shadowColor: Color(0xFF314BCE),
                elevation: 10,
                minimumSize: Size(350, 52),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "Don't have an account?",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF151940)),
            ),
            TextButton(
                onPressed: () {
                  Get.to(CreateAccountPage());
                },
                child: Text(
                  " R E G I S T E R  > ",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF314BCE)),
                ))
          ]),
        ),
      ),
    );
  }
}
