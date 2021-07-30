import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:privacychat/screens/UserController.dart';
import 'package:privacychat/screens/chatScreen.dart';

class RegnAndLoginScreen extends StatefulWidget {
  RegnAndLoginScreen({this.isLogin});

  final bool isLogin;

  @override
  _RegnAndLoginScreenState createState() => _RegnAndLoginScreenState();
}

class _RegnAndLoginScreenState extends State<RegnAndLoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String email = '', password = '';

  void saveForm() async {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        if (widget.isLogin)
          await UserController.loginUser(email, password);
        else
          await UserController.newUser(email, password);

        Navigator.pushNamed(context, ChatScreen.id);
      } catch (e) {
        print(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) {
                    email = value;
                  },
                  validator: (String value) {
                    return value.contains('@') ? null : 'Invalid Email';
                  },
                  decoration: InputDecoration(
                      hintText: "enter your email",
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.blueGrey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.blueGrey))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  onSaved: (value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                      hintText: "enter your password",
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.blueGrey)),
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
                      onPressed: saveForm,
                      child: Text(widget.isLogin ? 'Login' : 'Register',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800)),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
