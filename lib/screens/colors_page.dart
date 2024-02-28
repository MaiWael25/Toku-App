import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Number> numbers = const [
    Number(
        sound:"sounds/numbers/number_one_sound.mp3",
        image: "assets/images/colors/color_black.png",
        jpName: "kuro",
        enName: "black"),
    Number(
        sound: "sounds/numbers/number_two_sound.mp3",
        image: "assets/images/colors/color_brown.png",
        jpName: "chairo",
        enName: "brown"),
    Number(
        sound: "sounds/numbers/number_three_sound.mp3",
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "ki orenji",
        enName: "dusty yellow"),
    Number(
        sound: "sounds/numbers/number_four_sound.mp3",
        image: "assets/images/colors/color_gray.png",
        jpName: "haiiro",
        enName: "gray"),
    Number(
        sound: "sounds/numbers/number_five_sound.mp3",
        image: "assets/images/colors/color_green.png",
        jpName: "midori",
        enName: "green"),
    Number(
        sound: "sounds/numbers/number_six_sound.mp3",
        image: "assets/images/colors/color_red.png",
        jpName: "aka",
        enName: "red"),
    Number(
        sound: "sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/colors/color_white.png",
        jpName: "shiro",
        enName: "white"),
    Number(
        sound: "sounds/numbers/number_eight_sound.mp3",
        image: "assets/images/colors/yellow.png",
        jpName: "kirro",
        enName: "yellow"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff6B4226),
          title: const Text("Colors"),
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Item(
                item: numbers[index],
                color: Color(0xff7D40A2),
              );
            }));
  }

  List<Widget> getList(List<Number> numbers) {
    List<Item> itemList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemList.add(Item(item: numbers[i], color: Color(0xff7D40A2),));
    }
    return itemList;
  }
}
