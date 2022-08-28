import 'package:flutter/material.dart';
import 'package:nepal_tradition_and_culture_app/screens/dashboard_screen.dart';
import 'package:nepal_tradition_and_culture_app/tradition/traditiontype.dart';

class Tradition extends StatefulWidget {
  const Tradition({Key? key}) : super(key: key);

  @override
  State<Tradition> createState() => _TraditionState();
}

class _TraditionState extends State<Tradition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Color.fromARGB(255, 27, 27, 27)),
          onPressed: () {
            //passing this on loop
            back(context);
          },
        ),
        title: const Text(
          "About Nepali Tradition",
          style: TextStyle(fontSize: 26, color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
        children: [
          getPageContainer(
              0,
              'namaste.gif',
              'Namaste',
              'How to do Namaste in a traditional way',
              Colors.lightGreen.withOpacity(0.5)),
          getPageContainer(
              1,
              'chhath.gif',
              'Chhath Puja',
              'celebrate Chhath Puja in a local way',
              Colors.lightGreen.withOpacity(0.5)),
          getPageContainer(
              2,
              'tihar.gif',
              'Tihar',
              'How to celebrate Tihar from day 1-5',
              Colors.lightGreen.withOpacity(0.5)),
          getPageContainer(
              3,
              'holi.gif',
              'Holi',
              'How to celebrate Holi without hurting others.',
              Colors.lightGreen.withOpacity(0.5)),
          getPageContainer(
              4,
              'dashain.gif',
              'Dashain',
              'Celebrate Dashain in traditional way',
              Colors.lightGreen.withOpacity(0.5))
        ],
      ),
    );
  }

  Container getPageContainer(
      int id, String imgName, String title, String subtext, Color colorx) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TraditionPage(id)));
        },
        child: Container(
          padding: const EdgeInsets.only(right: 5),
          height: MediaQuery.of(context).size.height / 4.4,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            color: colorx,
          ),
          margin: const EdgeInsets.only(left: 85, right: 15, top: 25),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: -65,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Hero(
                    tag: "$id",
                    child: Image(
                      image: AssetImage("assets/images/$imgName"),
                      height: MediaQuery.of(context).size.height / 4.6,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          title,
                          style: (const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          )),
                        ),
                        margin: const EdgeInsets.only(left: 100, top: 20),
                      ),
                    ],
                  ),
                  Container(
                    child: Text(
                      subtext,
                      style:
                          const TextStyle(color: Colors.purple, fontSize: 12),
                    ),
                    margin: const EdgeInsets.only(left: 100),
                    padding: const EdgeInsets.only(top: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// the back function
Future<void> back(BuildContext context) async {
  Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomePage()));
}
