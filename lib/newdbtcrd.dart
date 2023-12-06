import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewDebitCard extends StatefulWidget {
  const NewDebitCard({super.key});

  @override
  State<NewDebitCard> createState() => _NewDebitCardState();
}

class _NewDebitCardState extends State<NewDebitCard> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add New Card",
                style: TextStyle(
                  color: Color(0xFF151940),
                  fontSize: 40,
                  fontFamily: 'gilroy',
                  height: 0,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 320,
                height: 180,
                color: Colors.red,
                child: Image.asset(
                  "assets/images/debitcard.jpg",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Enter the details to add a new card",
                style: GoogleFonts.inter(
                  color: Color(0xFF151940),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  height: 0,
                  letterSpacing: -0.45,
                ),
              ),
              SizedBox(
                height: 30,
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
                      hintText: "Enter your card number",
                      suffixIcon: Icon(Icons.credit_card_rounded),
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 30,
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
                      hintText: "Enter your card holder name ",
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("mark as defualt card"),
              Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
