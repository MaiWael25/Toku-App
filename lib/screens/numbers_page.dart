import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> numbers = const [
    Number(
        sound:"sounds/numbers/number_one_sound.mp3",
        image: "assets/images/numbers/number_one.png",
        jpName: "ichi",
        enName: "one"),
    Number(
        sound: "sounds/numbers/number_two_sound.mp3",
        image: "assets/images/numbers/number_two.png",
        jpName: "ni",
        enName: "two"),
    Number(
        sound: "sounds/numbers/number_three_sound.mp3",
        image: "assets/images/numbers/number_three.png",
        jpName: "san",
        enName: "three"),
    Number(
        sound: "sounds/numbers/number_four_sound.mp3",
        image: "assets/images/numbers/number_four.png",
        jpName: "yon",
        enName: "four"),
    Number(
      sound: "sounds/numbers/number_five_sound.mp3",
        image: "assets/images/numbers/number_five.png",
        jpName: "go",
        enName: "five"),
    Number(
        sound: "sounds/numbers/number_six_sound.mp3",
        image: "assets/images/numbers/number_six.png",
        jpName: "roku",
        enName: "six"),
    Number(
        sound: "sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/numbers/number_seven.png",
        jpName: "nana",
        enName: "seven"),
    Number(
        sound: "sounds/numbers/number_eight_sound.mp3",
        image: "assets/images/numbers/number_eight.png",
        jpName: "hachi",
        enName: "eight"),
    Number(
      sound: "sounds/numbers/number_nine_sound.mp3",
        image: "assets/images/numbers/number_nine.png",
        jpName: "kyu",
        enName: "nine"),
    Number(
        sound: "sounds/numbers/number_ten_sound.mp3",
        image: "assets/images/numbers/number_ten.png",
        jpName: "ju",
        enName: "ten"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff6B4226),
          title: const Text("Numbers"),
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Item(
                item: numbers[index],
                color: Color(0xffF99531),
              );
            }));
  }

  List<Widget> getList(List<Number> numbers) {
    List<Item> itemList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemList.add(Item(item: numbers[i], color: Color(0xffF99531),));
    }
    return itemList;
  }
}
