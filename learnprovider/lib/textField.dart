import 'package:flutter/material.dart';
import 'package:learnprovider/datas.dart';
import 'package:provider/provider.dart';

class TextInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newValue) {
        Provider.of<Datas>(context).ValueChanger(newValue);
      },
    );
  }
}
