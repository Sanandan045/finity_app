import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class listvala extends StatefulWidget {
  const listvala({super.key});

  @override
  State<listvala> createState() => _listvalaState();
}

class _listvalaState extends State<listvala> {
  List<String> name = [
    "Bonnie Riley",
    "Aileen Shin",
    "Angelina Winn",
    "Yamilet Booker",
    "Alejandra Stallings",
    "Viljami Toivonen"
  ];

  List<String> accountType = [
    "EUR ACCOUNT",
    "USD ACCOUNT",
    "BSD ACCOUNT",
    "INR ACCOUNT",
    "GBD ACCOUNT",
    "EUR ACCOUNT",
  ];

  List<String> img = [
    "assets/images/pic01.png",
    "assets/images/pic02.png",
    "assets/images/pic03.png",
    "assets/images/pic04.png",
    "assets/images/pic05.png",
    "assets/images/pic04.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 500,
          child: ListView.builder(
              itemCount: name.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: Container(
                    width: 54,
                    height: 54,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage(img[index]), fit: BoxFit.fill),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  title: Text(
                    name[index],
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF151940)),
                  ),
                  subtitle: Text(
                    accountType[index],
                    style: GoogleFonts.inter(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: Text(
                    "SEND",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF151940)),
                  ),
                );
              })),
        ),
        Positioned(
          right: 25,
          bottom: 95,
          child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.edit),
              )),
        )
      ],
    );
  }
}
