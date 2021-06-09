import 'package:flutter/material.dart';
import 'package:kids_app/Widgets/multy_table.dart';

class Media extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width,
        child: MultyTable());
  }
}
