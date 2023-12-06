import 'package:finity_app/pages/auth/verified.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifiyNumber extends StatefulWidget {
  const VerifiyNumber({super.key});

  @override
  State<VerifiyNumber> createState() => _VerifiyNumberState();
}

class _VerifiyNumberState extends State<VerifiyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: IconButton(
          //   icon: Icon(Icons.arrow_back_ios_new),
          //   onPressed: () {},
          // ),
          ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Verifiy Code",
            style: TextStyle(
                fontFamily: "gilroy",
                fontWeight: FontWeight.w500,
                fontSize: 32),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
              "Check your SMS inbox, we have sent you the code at +0 000 000 0000",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300, fontSize: 16)),
          SizedBox(
            height: 30,
          ),
          Form(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 64,
                width: 68,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  style: Theme.of(context).textTheme.headlineLarge,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                height: 64,
                width: 60,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headlineLarge,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                height: 64,
                width: 68,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headlineLarge,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                height: 64,
                width: 68,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headlineLarge,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              )
            ],
          )),
          SizedBox(
            height: 40,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'This session will end in 60 seconds.\n',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16)),
                TextSpan(
                    text: " Didn’t receive a code?  ",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16)),
                TextSpan(
                    text: "Resend Code",
                    style: GoogleFonts.poppins(
                        color: Color(0xFFFF897E),
                        fontWeight: FontWeight.w400,
                        fontSize: 16))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  Get.to(VerifiyPage());
                },
                child: Text("Touch Me")),
          )
        ]),
      ),
    );
  }
}
