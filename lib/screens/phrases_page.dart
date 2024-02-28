import 'package:flutter/material.dart';

import 'package:toku_app/models/number.dart';

import '../components/phrase_item.dart';

class PhrasesPage extends StatelessWidget {
   const PhrasesPage({Key? key}) : super(key: key);

  final List<Number> phrasesList = const [
    Number(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'chich',
      enName: 'Are you coming',
    ),
    Number(
      sound: 'sounds/numbers/number_two_sound.mp3',
      jpName: 'Ni',
      enName: 'two',
    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'San',
      enName: 'three',
    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Shi',
      enName: 'four',
    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Go',
      enName: 'five',

    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Roku',
      enName: 'six',

    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Sebun',
      enName: 'seven',

    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'hachi',
      enName: 'eight',

    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Kyū',
      enName: 'nine',

    ),
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Jū',
      enName: 'ten',

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: const Color(0xff50ADC7),
            item: phrasesList[index],
          );
        },
      ),
    );
  }

// List<Widget> getList(List<Number> numbers) {
//   List<Widget> itemsList = [];
//   for (int i = 0; i < numbers.length; i++) {
//     itemsList.add(
//       ListItem(
//         number: numbers[i],
//       ),
//     );
//   }

//   return itemsList;
// }
}
