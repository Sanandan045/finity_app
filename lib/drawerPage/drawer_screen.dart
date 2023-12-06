import 'package:finity_app/account_deatials.dart';
import 'package:finity_app/bank_screen.dart';
import 'package:finity_app/newdbtcrd.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navbar extends StatelessWidget {
  Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Domhnall Gleeson",
                style: TextStyle(
                  color: Color(0xFF151940),
                  fontSize: 26,
                  fontFamily: 'gilroy',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              accountEmail: Text(
                "email@gmail.com",
                style: TextStyle(
                  color: Color(0xFF151940),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0,
                  letterSpacing: -0.45,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset("assets/images/pic01.png"),
                ),
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                Get.to(BankPage());
                print("person clicked");
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("My Accounts"),
              onTap: () {
                Get.to(AccountDeatailsPage());
                print("My Accounts clicked");
              },
            ),
            ListTile(
              leading: Icon(Icons.history_edu),
              title: Text("History"),
              onTap: () {
                print("History clicked");
              },
            ),
            ListTile(
              leading: Icon(Icons.card_membership),
              title: Text("Debit Card"),
              onTap: () {
                Get.to(NewDebitCard());
                print("Debit Card clicked");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                print("Settings clicked");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_rounded),
              title: Text("LOGOUT  "),
              onTap: () {
                print("Logout clicked");
              },
            )
          ],
        ),
      ),
    );
  }
}
