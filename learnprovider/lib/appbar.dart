import 'package:flutter/material.dart';
import 'package:learnprovider/datas.dart';
import 'package:learnprovider/textField.dart';
import 'package:provider/provider.dart';

class AppBars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(Provider.of<Datas>(context,listen: false).data,)),
      body: TextInput(),
    );
  }
}
