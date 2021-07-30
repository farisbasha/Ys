import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  Buttons({this.text, this.onPressed, this.buttonColor});

  void Function() onPressed;
  String text;
  Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12, width: 1)),
      child: TextButton(
          onPressed: onPressed,
          child: Text(text,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800))),
    );
  }
}
