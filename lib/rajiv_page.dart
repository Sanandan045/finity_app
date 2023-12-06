import 'package:flutter/material.dart';

class rajivPage extends StatefulWidget {
  const rajivPage({super.key});

  @override
  State<rajivPage> createState() => _rajivPageState();
}

class _rajivPageState extends State<rajivPage> {
  List<Color> colours = [
    Colors.amber,
    Colors.black,
    Colors.orange,
    Colors.pink
  ];
  int currentpage = 0;
  var controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: PageView.builder(
                  controller: controller,
                  itemCount: colours.length,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      currentpage = index;
                    });
                    print(currentpage);
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      child: Center(
                        child: Column(
                          children: [Text("hi"), Text("bye")],
                        ),
                      ),
                      color: colours[index],
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      if (currentpage > 0) {
                        setState(() {
                          currentpage--;
                          controller.animateToPage(
                            currentpage,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        });
                      } else {
                        currentpage = 0;
                      }
                    },
                    icon: Icon(Icons.arrow_back_ios_new_sharp)),
                IconButton(
                    onPressed: () {
                      if (currentpage < colours.length - 1) {
                        setState(() {
                          currentpage++;
                          //print(currentpage);
                          controller.animateToPage(
                            currentpage,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        });
                      } else {
                        currentpage = colours.length - 1;
                        print(currentpage);
                      }
                    },
                    icon: Icon(Icons.forward)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
