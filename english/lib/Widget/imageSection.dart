import 'package:flutter/material.dart';


class ImageSection extends StatefulWidget {
  @override
  createState() {
    return ImageSectionState();
  }
}

class ImageSectionState extends State {
  Widget imageFunction(String image, void Function() pressAction) {
    return TextButton(
      onPressed: pressAction,
      child: Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(border: Border.all(color: Colors.black87)),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(mainAxisSpacing: 10, crossAxisCount: 3, children: [
        imageFunction("assets/images/cat.jpg", () {
          setState(() {
          });
        }),
        imageFunction("assets/images/dog.jpg", () {}),
        imageFunction("assets/images/donkey.jpg", () {}),
        imageFunction("assets/images/goat.jpg", () {}),
        imageFunction("assets/images/horse.jpg", () {}),
        imageFunction("assets/images/pig.jpg", () {}),
        imageFunction("assets/images/sheep.jpg", () {}),
      ]),
    );
  }
}
