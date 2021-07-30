import 'package:flutter/material.dart';
import 'package:privacychat/screens/chatScreen.dart';
import 'package:privacychat/screens/loginScreen.dart';
import 'package:privacychat/screens/privacyChatHome.dart';
import 'package:privacychat/screens/UserController.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    Screens(),
  );
}

class Screens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: PrivacyChatHome.id, routes: {
      PrivacyChatHome.id: (context) => PrivacyChatHome(),
      ChatScreen.id: (context) => ChatScreen()
    });
  }
}
