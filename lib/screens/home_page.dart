 import 'package:flutter/material.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

import '../components/category_item.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFF4D9),

        appBar: AppBar(
          backgroundColor: const Color(0xff6B4226),
          title: const Text("TOKU"),),
        body:Column(
          children: [
            Category(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                {
                  return const NumbersPage();
                }));
              },
              color: const Color(0xffF99531),
              text: "Numbers",
            ),

            Category(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                {
                  return const FamilyMembers();
                }));
              },
              color: const Color(0xff528032),
              text: "Family Members",
            ),
            Category(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                {
                  return const ColorsPage();
                }));
              },
              color: const Color(0xff7D40A2),
              text: "Colors",
            ),
            Category(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                {
                  return  const PhrasesPage();
                }));
              },
              color: const Color(0xff45A5C9),
              text: "Phrases",
            )
          ],
        )
    );
  }
}

