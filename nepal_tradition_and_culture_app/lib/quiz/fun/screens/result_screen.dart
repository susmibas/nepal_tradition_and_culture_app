import 'package:flutter/material.dart';
import 'package:nepal_tradition_and_culture_app/screens/dashboard_screen.dart';
import '../ui/shared/color.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          const Text(
            "You Score is",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
            shape: StadiumBorder(),
            color: AppColor.secondaryColor,
            padding: EdgeInsets.all(18.0),
            child: const Text(
              "Back to Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
