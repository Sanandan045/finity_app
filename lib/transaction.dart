import 'package:finity_app/drawerPage/drawer_screen.dart';
import 'package:finity_app/transaction_detials.dart';
import 'package:finity_app/widgets/transactionpagecard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      drawer: Navbar(),
      appBar: AppBar(actions: [Icon(Icons.settings)]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F6FA),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "USD BALANCE AVAILABLE",
                    style: GoogleFonts.inter(
                      color: Color(0xFF151940),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.45,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "₹2,50,000",
                    style: TextStyle(
                      color: Color(0xFF151940),
                      fontSize: 52,
                      fontFamily: 'gilroy',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'See Bank Details',
                    style: GoogleFonts.inter(
                      color: Color(0xFF314BCE),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.45,
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(TransactionInfoPage());
                },
                child: Container(
                  height: 73,
                  width: 332,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8)),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.only(left: 35, top: 5, right: 10),
                    title: Text(
                      "Transaction Details",
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Balances",
                style: TextStyle(
                  color: Color(0xFF151940),
                  fontSize: 35,
                  fontFamily: 'gilroy',
                  height: 0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              BalCard(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Recent transactions",
                style: TextStyle(
                  color: Color(0xFF151940),
                  fontSize: 20,
                  fontFamily: 'gilroy',
                  height: 0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundColor: Color(0xFFF4F5F9),
                    radius: 25,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.account_balance))),
                title: Text(
                  "Behance Project",
                  style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF151940)),
                ),
                subtitle: Text(
                  "23 march 2021",
                  style: GoogleFonts.inter(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Text(
                  "₹4000",
                  style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF151940)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
