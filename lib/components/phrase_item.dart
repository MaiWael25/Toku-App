import 'package:flutter/material.dart';

import '../models/number.dart';
import 'item_info.dart';
class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});
  final Number item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(item: item,),
    );
  }
}
