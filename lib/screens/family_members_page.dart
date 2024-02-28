import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/number.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<Number> numbers = const [
    Number(
        sound:"sounds/numbers/number_one_sound.mp3",
        image: "assets/images/family_members/family_father.png",
        jpName: "otousan",
        enName: "father"),
    Number(
        sound: "sounds/numbers/number_two_sound.mp3",
        image: "assets/images/family_members/family_mother.png",
        jpName: "okaasan",
        enName: "mother"),
    Number(
        sound: "sounds/numbers/number_three_sound.mp3",
        image: "assets/images/family_members/family_daughter.png",
        jpName: "musume",
        enName: "daughter"),
    Number(
        sound: "sounds/numbers/number_four_sound.mp3",
        image: "assets/images/family_members/family_son.png",
        jpName: "musuko",
        enName: "son"),
    Number(
        sound: "sounds/numbers/number_five_sound.mp3",
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "ani",
        enName: "older brother"),

    Number(
        sound: "sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "ane",
        enName: "older sister"),
    Number(
        sound: "sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "otouto",
        enName: "younger brother"),
    Number(
        sound: "sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "imouto",
        enName: "younger sister"),
    Number(
        sound: "sounds/numbers/number_nine_sound.mp3",
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "ojiisan",
        enName: "grandfather"),
    Number(
        sound: "sounds/numbers/number_ten_sound.mp3",
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "obaasan",
        enName: "grandmother"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff6B4226),
          title: const Text("Family Members"),
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Item(
                item: numbers[index],
                color: Color(0xff528032),
              );
            }));
  }

  List<Widget> getList(List<Number> numbers) {
    List<Item> itemList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemList.add(Item(item: numbers[i], color: Color(0xff528032),));
    }
    return itemList;
  }
}
