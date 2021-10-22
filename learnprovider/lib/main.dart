import 'package:flutter/material.dart';
import 'package:learnprovider/appbar.dart';
import 'package:learnprovider/datas.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<Datas>(
    create: (context) => Datas(),
    child: MaterialApp(
      home: AppBars(),
    ),
  ));
}
