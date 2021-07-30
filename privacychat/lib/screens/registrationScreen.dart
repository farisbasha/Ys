import 'package:flutter/material.dart';
import 'package:privacychat/widgets/regnAndLoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatelessWidget {
  static String id = "registration Screen";
  final _auth = FirebaseAuth.instance;
  String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegnAndLoginScreen(
        text: "Register",
        onPressed: () async {
          RegnAndLoginScreen _regnAndLoginScreen = RegnAndLoginScreen();
          password = _regnAndLoginScreen.password;
          email = _regnAndLoginScreen.email;
          print("1 ${_regnAndLoginScreen.password}\n$password");
          final newUser = await _auth.createUserWithEmailAndPassword(
              email: email, password: password);
        },
      ),
    );
  }
}
