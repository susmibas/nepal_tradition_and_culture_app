import 'package:flutter/material.dart';
import 'package:nepal_tradition_and_culture_app/tradition/traditiondetail.dart';

class TraditionPage extends StatelessWidget {
  int heroID;

  TraditionPage(
    this.heroID,
  );
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
              color: traditionDetails[heroID].color,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      padding: const EdgeInsets.all(20),
                      child: Hero(
                        tag: "$heroID",
                        child: Image.asset(traditionDetails[heroID].image),
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
                    traditionDetails[heroID].name,
                    style: const TextStyle(fontSize: 28, color: Colors.red),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    traditionDetails[heroID].steps,
                    style: const TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    traditionDetails[heroID].significance,
                    style: const TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 4, 30, 70)),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
