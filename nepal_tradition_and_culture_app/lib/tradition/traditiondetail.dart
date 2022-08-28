import 'package:flutter/material.dart';

// ignore: camel_case_types
class traditiondetails {
  final String image;
  final String name;
  final String significance;
  final String steps;
  final int? id;
  final Color? color;

  traditiondetails({
    required this.id,
    required this.color,
    required this.image,
    required this.name,
    required this.steps,
    required this.significance,
  });
}

List<traditiondetails> traditionDetails = [
  traditiondetails(
      id: 0,
      color: const Color.fromARGB(125, 30, 233, 206),
      image: "assets/images/namaste.gif",
      name: 'How to do Namaste',
      significance:
          "Significance: The posture of Namaste is a Yogasana, while doing Namaste, the tension in the human mind is reduced and he feels comfortable. With the posture of Namaste, the mind concentrates, due to which the body gets a lot of benefits due to its focus.",
      steps:
          'Namaste is more than a word we say, there is a proper way to do Namaste. The proper way to do Namaste is with slight bow and join your palms together, bring it below your chin facing it upwards, thumbs close to the chest. This gesture is called Anjali Mudra or Pranamasana. ‘Namaste’, accompanied with a smile, will take you miles opening many doors and hearts.'),
  traditiondetails(
      id: 1,
      color: Colors.pink.withOpacity(.5),
      image: 'assets/images/chhath.gif',
      name: 'How to Celebrate Chhath- Puja',
      significance:
          "Significance: This festival is dedicated to the worship of the Sun god and his wife Usha. This festival is celebrated to thank god for supporting life on earth and to seek the blessing of divine Sun god and his wife.",
      steps:
          'The Puja Ceremonies and rituals of this festival are begun on Nahay-Khay - the first day of Chhath. People gather on the Chhath Ghats to express their gratitude and devotion towards the Lord Surya. People come a long way before sunrise one day before the celebration and take a both to rouse themselves in its pious water. They perform various rituals and customs by offering water to Sun as this celebration is a thanksgiving celebration that is fundamentally wholehearted to the Sun God- Lord Surya.'),
  traditiondetails(
      id: 2,
      color: Colors.cyan.withOpacity(.5),
      image: 'assets/images/tihar.gif',
      name: 'How to celebrate Tihar',
      significance:
          "Tihar is the second biggest Nepali festival after Dashain, and is usually allocated a three-day-long national holiday. The festival is novel in that it shows reverence to not just the gods, but also to animals such as crows, cows, and dogs that have long-lived alongside humans.",
      steps:
          'Tihar, the festival of lights is one of the most important festivals of all festivals celebrated in Nepal. People worship Goddess Laxmi, the goddess of wealth. Also Tihar is celebrated to improve and strengthen the relationship of brother and sister. During Tihar, people decorate their houses with lights, candles and oil lamps so, the entire village or city looks very bright in the night. The place looks so light, beautiful and fascinating. Tihar is celebrated for bringing joy and prosperity in life.'),
  traditiondetails(
      id: 3,
      color: Colors.purpleAccent.withOpacity(.5),
      image: 'assets/images/holi.gif',
      name: 'How to celebrate holi in proper way',
      significance:
          "Significance:Holi signifies the triumph of good over evil and it's a day when people forgive and forget, and let go of the negative energies from their lives to start afresh. According to Hindu mythology, king Hiranyakashipu was given a boon by Lord Brahma that he could not be killed by either a man or any animal.",
      steps:
          'During Holi, people of all ages and from all social classes pour into the streets of Nepal to celebrate and play colors together. Most problems that occur during the festival are caused by people who consume too much alcohol and get too rowdy during the celebrations.When experiencing Holi in Nepal it is best to celebrate in the early morning and return to your hotel before the celebrations get too rough and the hooligans take to the streets.Book your hotels and accommodation well in advance. Holi is a popular time to visit Nepal and hotels can book up quickly. Its never a good idea to arrive in Nepal for Holi without a hotel booked as you may not find one, or if you do find one it may be dirty and unsafe.Be vigilant and stay with your group during the celebrations. Holi celebrations often include large crowds where everyone is covered in colors making it difficult to recognize your friends or family.Always celebrate Holi in a group. If you are traveling alone, you can join up with a group of other travelers from your hotel or join a Holi tour.Its best to find a group of families or women to celebrate with because they will be less rowdy and will take travelers in and protect them from hooligans.Dont bring any valuables with you out on the streets during the celebration as they could be ruined or taken.During the celebrations, groups of rowdy and intoxicated Nepaln men can pose a threat. These men are often drunk and take advantage of their features being hidden to get away with inappropriate touching or assault.'),
  traditiondetails(
      id: 4,
      color: Colors.orange.withOpacity(.5),
      image: 'assets/images/dashain.gif',
      name: 'How to Celebrate Dashain',
      significance:
          "Significance:  Dashain symbolises the victory of good over evil. For followers of Shaktism, it represents the victory of the goddess Durga. In Hindu scripture, the demon Mahishasura had created terror in the devaloka (the world where gods lives) but Durga killed the devils also known as demons.",
      steps:
          'There are a lot of things to do in Dashain. If you belong to Hinduism, you probably know the special practice of the Dashain festival in Nepal. It is one of the greatest festivals celebrated by the majority of Nepalese as the majority of Nepal comprises of Hindu followers. Some festivities and games in Dashain make this festival an enjoyable retreat. If you want to attend a typical Dashain festival in Nepal, you probably can ask your operator to make arrangements to attend this festival.')
];
