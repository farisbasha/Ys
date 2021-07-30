import 'package:flutter/material.dart';
import 'package:privacychat/screens/UserController.dart';

class ChatScreen extends StatefulWidget {
  static String id = "chat screen";
  @override
  createState() => ChatScreenState();
}

class ChatScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Privacy chat",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Center(
          child: Text('Logged in as : ${UserController.user.user.email}'),
        ),
      ),
    );
  }
}
