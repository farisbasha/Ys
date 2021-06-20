import 'package:english/Widget/imageSection.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ImageSection(),
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
        ),
      ),
    );
  }
}
