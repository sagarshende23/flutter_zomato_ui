import 'package:flutter/material.dart';

class CircularImages extends StatefulWidget {
  @override
  _CircularImagesState createState() => _CircularImagesState();
}

class _CircularImagesState extends State<CircularImages> {
  List<String> _circularImages = [
    "assets/img/1.png",
    "assets/img/2.png",
    "assets/img/3.png",
    "assets/img/4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: _circularImages.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 45.0,
                  backgroundImage: AssetImage(_circularImages[index]),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
