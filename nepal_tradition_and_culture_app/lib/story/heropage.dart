import 'package:flutter/material.dart';
import 'package:nepal_tradition_and_culture_app/story/herodetail.dart';

class HeroPage extends StatefulWidget {
  int heroID;

  HeroPage(
    this.heroID,
  );

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            height: size.height / 2,
            width: double.infinity,
            decoration: BoxDecoration(
              color: heroDetails[widget.heroID].color,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 40,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      padding: const EdgeInsets.all(20),
                      child: Hero(
                        tag: "${widget.heroID}",
                        child: Image.asset(heroDetails[widget.heroID].image),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    heroDetails[widget.heroID].name,
                    style: const TextStyle(fontSize: 28, color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    heroDetails[widget.heroID].story,
                    style:
                        const TextStyle(fontSize: 18, color: Colors.deepPurple),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
