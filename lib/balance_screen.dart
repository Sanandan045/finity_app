import 'package:finity_app/widgets/transactionpagecard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.grid_4x4_outlined)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 350,
                height: 300,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F6FA),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Balances",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      BalCard()
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
