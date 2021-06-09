import 'package:flutter/material.dart';
import 'package:kids_app/Widgets/colorlist.dart';
import 'package:kids_app/Widgets/grid_widget.dart';
import 'package:kids_app/Widgets/mediawidget.dart';
import 'package:kids_app/Widgets/multy_table.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "kids app",
        home: Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Center(
                    child: Text(
                  "Kids App",
                )),
              ),
              ColorList(),
              GridWidget(),
              Media()
            ])));
  }
}
