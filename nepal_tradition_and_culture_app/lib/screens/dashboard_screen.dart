import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nepal_tradition_and_culture_app/constant/data_json.dart';
import 'package:nepal_tradition_and_culture_app/model/user_model.dart';
import 'package:nepal_tradition_and_culture_app/screens/home_screen.dart';
import 'package:nepal_tradition_and_culture_app/screens/login_screen.dart';
import 'package:nepal_tradition_and_culture_app/story/storypage.dart';
import 'package:nepal_tradition_and_culture_app/tradition/culture.dart';
import 'package:nepal_tradition_and_culture_app/tradition/traditionpage.dart';
import '../quiz/fun/screens/quiz_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_final_fields
  User user = FirebaseAuth.instance.currentUser as User;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 40),
      children: [
        const Text(
          "Welcome !",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
        ),
        const SizedBox(height: 15),
        const Text(
          "Learn about Nepali culture and tradition.",
          style: TextStyle(fontSize: 18),
        ),

        Divider(
          color: Colors.grey,
          thickness: .8,
          height: 40,
        ),
        // const SizedBox(
        //   height: 20,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Categories",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const Text(
              "All   ",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        //for Tradition Desgin
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(online_data_one.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const Tradition()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Stack(
                      children: [
                        Container(
                            width: (MediaQuery.of(context).size.width - 60),
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        online_data_one[index]['img']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20))),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 25, right: 18, left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                online_data_one[index]['title'],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                online_data_one[index]['courses'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        //for Culture Desgin
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(online_data_two.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => CultureScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Stack(
                      children: [
                        Container(
                            width: (MediaQuery.of(context).size.width - 60),
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        online_data_two[index]['img']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20))),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 25, right: 18, left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                online_data_two[index]['title'],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                online_data_two[index]['courses'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        //for  Stories Desgin
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(online_data_three.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => StoryPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Stack(
                      children: [
                        Container(
                            width: (MediaQuery.of(context).size.width - 60),
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        online_data_three[index]['img']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20))),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 25, right: 18, left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                online_data_three[index]['title'],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                online_data_three[index]['courses'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),

        //for Fun quiz  Desgin
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(online_data_five.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => FunQuiz()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Stack(
                      children: [
                        Container(
                            width: (MediaQuery.of(context).size.width - 60),
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        online_data_five[index]['img']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20))),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 25, right: 18, left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                online_data_five[index]['title'],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                online_data_five[index]['courses'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        //
      ],
    );
  }
}

// the logout function
Future<void> back(BuildContext context) async {
  Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomePage()));
}
