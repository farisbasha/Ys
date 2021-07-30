import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:privacychat/screens/chatScreen.dart';
import 'package:privacychat/widgets/regnAndLoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginScreen extends StatelessWidget {

  final _auth = FirebaseAuth.instance;
  static String id = "Login screen";
  String email, password;
  RegnAndLoginScreen _regnAndLoginScreen = RegnAndLoginScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegnAndLoginScreen(
        text: "Login",
        onPressed: () async {
          email = _regnAndLoginScreen.email;
          password = _regnAndLoginScreen.password;
          try {
            final user = await _auth.signInWithEmailAndPassword(
                email: email, password: password);
            if (user != null) {
              Navigator.pushNamed(context, ChatScreen.id);
            }
          } catch (e) {
            print(e);
          }
        },
      ),
    );
  }
}
