import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width,
        child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 4,
            children: <Widget>[
              for (int i = 1; i < 1000; i++)
                (Container(
                    child: Center(
                  child: Text(i.toString()),
                )))
            ]));
  }
}
