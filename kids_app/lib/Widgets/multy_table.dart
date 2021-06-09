import 'package:flutter/material.dart';

class MultyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: [
    for (int i = 1; i < 200; i++)(
    Container(color:Colors.cyanAccent,child: Center(
        child: Text("   1x" + i.toString() + "=" + (1 * i.toInt()).toString() + "\n   2x" +
            i.toString() + "=" + (1 * i).toString() + (2 * i.toInt()).toString() + "\n   3x" +
            i.toString() + "=" + (1 * i).toString() +  (3 * i.toInt()).toString() +"\n   4x" +
            i.toString() + "=" + (1 * i).toString() + (4 * i.toInt()).toString() + "\n   5x" +
            i.toString() + "=" + (1 * i).toString() + (5 * i.toInt()).toString() + "\n   6x" +
            i.toString() + "=" + (1 * i).toString() + (6 * i.toInt()).toString() + "\n   7x" +
            i.toString() + "=" + (1 * i).toString() + (7 * i).toString() + "\n   8x" +
            i.toString() + "=" + (1 * i).toString() + (8 * i).toString() + "\n   9x" +
            i.toString() + "=" + (1 * i).toString() + (9 * i).toString()  )
    )))]);
  }
}
