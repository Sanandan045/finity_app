import 'package:flutter/material.dart';

class SendTo extends StatefulWidget {
  const SendTo({super.key});

  @override
  State<SendTo> createState() => _SendToState();
}

class _SendToState extends State<SendTo> {
  List<String> imgg = [
    "assets/images/pic01.png",
    "assets/images/pic02.png",
    "assets/images/pic03.png",
    "assets/images/pic04.png",
    "assets/images/pic05.png",
    "assets/images/pic04.png"
  ];
  List<String> nameies = [
    "Bonnie ",
    "Aileen ",
    "Angelina ",
    "Yamilet ",
    "Alejandra ",
    "Viljami "
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: imgg.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage(imgg[index]), fit: BoxFit.fill),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    nameies[index],
                    style: TextStyle(
                      color: Color(0xFF020000),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.45,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
