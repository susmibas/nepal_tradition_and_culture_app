import 'package:flutter/material.dart';
import 'package:nepal_tradition_and_culture_app/screens/dashboard_screen.dart';
import 'package:nepal_tradition_and_culture_app/story/heropage.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
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
          "Fore Fathers Story",
          style: TextStyle(fontSize: 26, color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
          getPageContainer(
              0,
              'gurkha1.jpg',
              'Lacchiman Gurung',
              'A brave rifleman who fought off 31 Japanese soldiers with his left hand alone.',
              Colors.lightBlue.withOpacity(0.5)),
          getPageContainer(
              1,
              'gurkha2.jpg',
              'Bhakti Thapa',
              'The government has declared Bhakti Thapa as the latest national hero of Nepal.',
              Colors.lightBlue.withOpacity(0.5)),
          getPageContainer(
              2,
              'gurkha3.jpg',
              'Gautam Buddha',
              'The founder of Buddhism who later became known as “the Buddha.',
              Colors.lightBlue.withOpacity(0.5)),
          getPageContainer(
              3,
              'gurkha4.jpg',
              'Prithivi Narayan Shah',
              'The last ruler of the Gorkha Kingdom and first monarch of Kingdom of Nepal.',
              Colors.lightBlue.withOpacity(0.5)),
          getPageContainer(
              4,
              'gurkha5.jpg',
              'Balabhadra Kunwar',
              'Balbhadra Kunwar was a Nepalese military commander and administrator in the Kingdom of Nepal.',
              Colors.lightBlue.withOpacity(0.5)),
          getPageContainer(
              5,
              'gurkha6.jpg',
              'Amar Singh Thapa',
              'He led many conquest battles of Western provinces in the Unification of Nepal.',
              Colors.lightBlue.withOpacity(0.5)),
          getPageContainer(
              6,
              'gurkha7.jpg',
              'Bhimsen Thapa',
              ' Bhimsen  killed ninety-three people as criminals for Rana Bahadurs murder.',
              Colors.lightBlue.withOpacity(0.5)),
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
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HeroPage(id)));
        },
        child: Container(
          padding: const EdgeInsets.only(right: 8),
          height: MediaQuery.of(context).size.height / 4.4,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            color: colorx,
          ),
          margin: const EdgeInsets.only(left: 85, right: 15, top: 25),
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
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
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          title,
                          style: (const TextStyle(
                            color: Colors.red,
                            fontSize: 18,
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
