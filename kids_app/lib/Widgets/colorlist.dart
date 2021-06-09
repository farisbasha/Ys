import 'package:flutter/material.dart';

class ColorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.3,
      width: MediaQuery.of(context).size.width,
      color: Colors.green,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(child:Text("BLUE"),color: Colors.blue,width: 70,),
          Container(child:Text("GREEN"),color: Colors.green,width: 70),
          Container(child:Text("RED"),color: Colors.red,width: 70),
          Container(child:Text("YELLOW"),color: Colors.yellow,width: 70),
          Container(child:Text("ORANGE"),color: Colors.orange,width: 70),
          Container(child:Text("BROWN"),color: Colors.brown,width: 70),
          Container(child:Text("CYAN"),color: Colors.cyanAccent,width: 70),
        ],
      ),
    );
  }
}
