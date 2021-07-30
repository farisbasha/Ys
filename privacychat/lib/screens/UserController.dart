import 'package:flutter/material.dart';
import 'package:privacychat/widgets/regnAndLoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserController {
  static final _auth = FirebaseAuth.instance;

  static UserCredential user;

  static Future<void> newUser(String email, String password) async {
    print(email);
    print(password);
    try {
      user = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      print(e.toString());
    }
  }

  static Future<void> loginUser(String email, String password) async {
    print('login email $email');
    print(password);
    try {
      user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      print('${user.user.email} this is email');
    } catch (e) {
      print(e.toString());
    }
  }
}
