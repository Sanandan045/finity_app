import 'package:finity_app/pages/auth/login.dart';
import 'package:finity_app/pages/auth/phone_number.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool? ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Register",
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
                    fontWeight: FontWeight.w600),
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
                    hintText: "Full Name",
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
                style: GoogleFonts.inter(
                    color: Color(0xFF314BCE),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
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
                    hintText: "Enter your Email Address",
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
                style: GoogleFonts.inter(
                    color: Color(0xFF314BCE),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
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
                    hintText: "Password",
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
                style: GoogleFonts.inter(
                    color: Color(0xFF314BCE),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
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
                    hintText: "Confrom Password",
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                    value: ischeck,
                    activeColor: Color(0xFFFF897E),
                    onChanged: (newBool) {
                      setState(() {
                        ischeck = newBool;
                      });
                    }),
                Text(
                  "I’ve read and agree to the terms of privacy\n policy",
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF151940)),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(PhoneNumberPage());
              },
              child: Text(
                "Register",
                style: TextStyle(
                    fontFamily: 'gilroy',
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF314BCE),
                shadowColor: Color(0xFF314BCE),
                elevation: 10,
                minimumSize: Size(320, 52),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Already have an account?",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF151940)),
            ),
            TextButton(
                onPressed: () {
                  Get.to(LoginPage());
                },
                child: Text(
                  "L O G I N  > ",
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
