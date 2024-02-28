import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/number.dart';
class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final Number item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(item.jpName,style: const TextStyle(color: Colors.white,fontSize: 16,),),
              Text(item.enName,style: const TextStyle(color: Colors.white,fontSize: 16),),

            ],
          ),
        ),
        const Spacer(flex: 1,),
        Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () async {
                item.playSound();


              }, icon: const Icon(Icons.arrow_right_sharp,size: 40,color: Colors.white,),
            )
        ),

      ],

    );
  }
}