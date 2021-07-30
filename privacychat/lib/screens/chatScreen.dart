import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static String id = "chat screen";
  @override
  createState() => ChatScreenState();
}

class ChatScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(
      "Privacy chat", style: TextStyle(fontWeight: FontWeight.w900),),
      backgroundColor: Colors.blueGrey,),);
  }
}