import 'package:flutter/material.dart';
import 'package:nepal_tradition_and_culture_app/screens/dashboard_screen.dart';

class CultureScreen extends StatefulWidget {
  const CultureScreen({Key? key}) : super(key: key);

  @override
  State<CultureScreen> createState() => _CultureScreenState();
}

class _CultureScreenState extends State<CultureScreen> {
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
          "Nepali Culture",
          style: TextStyle(fontSize: 26, color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
          const Image(image: AssetImage("assets/images/C1.jpg")),
          Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
              text: const TextSpan(
                  text:
                      'Culture of Nepal - Glimpse into the Vibrant Nepali Culture!',
                  style: TextStyle(
                      height: 1.75, fontSize: 25, color: Colors.black87),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            '\n The culture of Nepal is as diverse as the ethnic-lingual groups of people present in Nepal. These groups - some natives, some arrived from other countries, together create a vibrant and vivid culture of Nepal, which is similar in some aspects to the culture of its neighbouring areas like India and Tibet and with some unique and distinct features of its own.',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
          ),
          const Image(image: AssetImage("assets/images/C2.jpg")),
          Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
              text: const TextSpan(
                  text: 'Nepals Unique Customs & Traditions',
                  style: TextStyle(
                      height: 1.75, fontSize: 25, color: Colors.black87),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            '\n Nepalis have their own customs and traditions each with its own significance. A lot of these are based on myths and superstitions, like belief in witches, ghosts and supernatural creatures and reliance on Tantriks and shamans. They also indulge in animal sacrifices in their religious procedures. Some communities in Nepal have weird marriage traditions like getting married to a wood-apple and the sun, some have to marry their first-cousin, some their sister-in-law, and some people can even marry another mans wife by paying a sum of money! Its called Jari Vivaha.\n Another unique tradition is celebrating the birthdays of old people when they turn specific ages - 77, 1000 months, 88, 99 and 110 years. This one is called Janku. Some communities, especially those residing in the highlands, have an unusual way of bidding farewell with the dead known as sky burial. Instead of cremating or burying the bodies, it is left to be eaten by vultures and crows.',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
          ),
          const Image(image: AssetImage("assets/images/C3.jpg")),
          Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
              text: const TextSpan(
                  text: 'Festivals of Nepal',
                  style: TextStyle(
                      height: 1.75, fontSize: 25, color: Colors.black87),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            '\nThe varied culture of Nepal is seen through its many festivals. Nepalis celebrate numerous festivals throughout the year, much like the Indians. Major festivals include Dashain (Nepali equivalent of Durga Puja) which marks the victory of Goddess Durga over the demon Mahishasura. It is one of the most anticipated festivals of the year and is celebrated by Nepali Hindus with great pomp and joy for fifteen days in the month of Ashvin (September-October). Tihar (Diwali), also called as Swanti and Yamapanchak by some communities, is another famous festival celebrated for five days. In addition to decorating the houses with lights, animals are also worshipped during this period. ',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
          ),
          const Image(image: AssetImage("assets/images/c4.jpg")),
          Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
              text: const TextSpan(
                  text: 'Nepali Dance and Music',
                  style: TextStyle(
                      height: 1.75, fontSize: 25, color: Colors.black87),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            '\nNepal has a rich tradition of folk, as well as classical dances. According to Hindu mythology, Shiva, who is the God of dance in his Nataraja form, used to do his famous Tandava dance here in the Himalayas. Different communities have their own dance forms which are performed during various festivals, fairs and family occasions. Some folk dances include \nPopular Dances of Nepal:\n1. Dandi Naach which is a stick dance performed during Phagu Purnima\n2. Dhan Naach which is performed by members of the Limbu community to celebrate the harvest of crops\n3. Chandi Naach performed by the Rais during Udhauli and Ubhauli\n4. Panchabuddha Nritya - a Buddhist dance that has to be performed by five people\n5. Bhairab Nritya, where the dancer dances dressed as Bhairab \n \n Music is also an important element of Nepalese culture. It has been a source of manifestation of their emotions, telling of stories and also a form of entertainment. Just like dance, Nepalese music is also classified according to the community - the Tamangs, Gurungs, Sherpas, Maithilis, Newas, Kirats, Magars and Tharus each have their own distinct music and singers. Musical instruments like Madal, Dhimey, Panchai Baja and Sarangi often accompany the songs. ',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
          ),
          const Image(image: AssetImage("assets/images/C6.jpg")),
          Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
              text: const TextSpan(
                  text: 'Primary Occupation of the Nepali Natives',
                  style: TextStyle(
                      height: 1.75, fontSize: 25, color: Colors.black87),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            '\nNepal is an agro-based economy implying that a majority of its population (around 70%) is engaged in agriculture and related work. Most of the farming takes place in the southern Terai plains and also in some of the lower hilly areas. Fruits and vegetables, cereals like rice, wheat and maize, and tea are the main crops cultivated. The remaining 30% of the people are employed in the service sector and industries. You can already predict that tourism is an important industry in the country, being a pilgrimage site for Buddhists and Hindus, and not to forget the trekkers and mountaineers. Apart from these, people are also employed in financial institutions, transport sector, construction sector, software sector in urban areas and engage in animal husbandry and fishery in rural areas.',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
          ),
          const Image(image: AssetImage("assets/images/C5.jpg")),
          Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
              text: const TextSpan(
                  text: 'Religion in Nepal',
                  style: TextStyle(
                      height: 1.75, fontSize: 25, color: Colors.black87),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            '\nAfter officially being a Hindu kingdom for a long time, Nepal at present is a secular country giving equal importance to all religions and giving its citizens the freedom to practice the religion of their choice. Demographic data shows that the vast majority of Nepals population is dominated by Hindus - a whopping 81.3% of the people follow the religion, followed by Buddhists who cover 9%, Muslims 4.4%, Kiratis (religion of some of the native Himalayan tribes) 3%, Christians 1.4% and the remaining 0.9% is composed of Jains, Sikhs, Bahais, Jews and also some people who do not follow any religion. Places of worship for all the religions exist in the country, and all the religions celebrate their own festivals. Great harmony and bonding are said to exist between the Hindu and Buddhist communities in Nepal to the extent that they share places of worship and celebrate festivals together. Lumbini in Nepal is, in fact, the birthplace of Lord Buddha and hence a very holy place for both the Hindus and the Buddhists.',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
          ),
          const Image(image: AssetImage("assets/images/flag.jpg")),
          Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
              text: const TextSpan(
                  text: 'Conclusion',
                  style: TextStyle(
                      height: 1.75, fontSize: 25, color: Colors.black87),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            "\nThat was all about the culture of Nepal. Despite having over a hundred different ethnic groups, there seems to be unity in diversity in the nation, thus truly making it a land of 'Never Ending Peace And Love'.",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
