import 'package:flutter/material.dart';
import '../models/number.dart';
import 'package:audioplayers/audioplayers.dart';

import 'item_info.dart';
class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.color, });
   final Number item ;
   final Color ?color ;




  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: color,
      child: Row(
        children: [
            Container(
              color:  Color(0xffFFF4D9),
              child: Image.asset(item.image!)),
            Expanded(child: ItemInfo(item: item))
        ],),

    );
  }
}




