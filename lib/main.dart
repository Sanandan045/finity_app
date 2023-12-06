import 'package:finity_app/account_deatials.dart';
import 'package:finity_app/balance_screen.dart';
import 'package:finity_app/bank_screen.dart';
import 'package:finity_app/convert.dart';
import 'package:finity_app/newdbtcrd.dart';
import 'package:finity_app/pages/auth/createac.dart';
import 'package:finity_app/errorPage/errorlocation.dart';
import 'package:finity_app/errorPage/no_new_activity.dart';
import 'package:finity_app/errorPage/paymentfailed.dart';
import 'package:finity_app/pages/auth/forget_password.dart';
import 'package:finity_app/pages/auth/info_verify.dart';
import 'package:finity_app/invite_frnd.dart';
import 'package:finity_app/pages/auth/login.dart';
import 'package:finity_app/main_screen.dart';
import 'package:finity_app/pages/splashOnboradPage/onborad.dart';
import 'package:finity_app/pages/splashOnboradPage/onborad02.dart';
import 'package:finity_app/pages/splashOnboradPage/onborad03.dart';
import 'package:finity_app/pages/splashOnboradPage/slpash.dart';
import 'package:finity_app/payment_sucessful.dart';
import 'package:finity_app/pages/auth/phone_number.dart';
import 'package:finity_app/rajiv_page.dart';
import 'package:finity_app/recipients.dart';
import 'package:finity_app/select_recipents.dart';
import 'package:finity_app/send_money.dart';
import 'package:finity_app/transaction.dart';
import 'package:finity_app/transaction_detials.dart';
import 'package:finity_app/pages/auth/verified.dart';
import 'package:finity_app/pages/auth/verify_number.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
