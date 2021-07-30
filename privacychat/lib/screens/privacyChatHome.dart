import 'package:flutter/material.dart';
import 'package:privacychat/constants.dart';
import 'package:privacychat/screens/loginScreen.dart';
import 'package:privacychat/screens/registrationScreen.dart';
import 'package:privacychat/widgets/buttons.dart';

class PrivacyChatHome extends StatelessWidget {
  static String id = "privacy_chat_home";

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Privacy Chat",
                style: kBigText,
              ),
              SizedBox(
                height: 20,
              ),
              Buttons(
                text: "Login",
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                buttonColor: Color(0x80F5F26E),
              ),
              SizedBox(
                height: 20,
              ),
              Buttons(
                text: "Register",
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                buttonColor: Color(0x80F5F26E),
              )
            ],
          ),
        ),
      ),
    );
  }
}
