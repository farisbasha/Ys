import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegnAndLoginScreen extends StatelessWidget {
  RegnAndLoginScreen({this.text, this.onPressed});

  String text;
  void Function() onPressed;

  String email, password;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
                print(email);
              },
              decoration: InputDecoration(
                  hintText: "enter your email",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.blueGrey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.blueGrey))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: InputDecoration(
                  hintText: "enter your password",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.blueGrey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.blueGrey))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 150,
                decoration: BoxDecoration(
                    color: Color(0xffDBDBDB),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: onPressed,
                  child: Text(text,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
                )),
          ],
        ),
      ),
    );
  }
}
