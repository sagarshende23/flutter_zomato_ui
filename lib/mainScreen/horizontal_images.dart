import 'package:flutter/material.dart';

class HorizontalImages extends StatefulWidget {
  @override
  _HorizontalImagesState createState() => _HorizontalImagesState();
}

class _HorizontalImagesState extends State<HorizontalImages> {
  List<String> _imageList =[
      "assets/img/food.png",
    "assets/img/food2.png",
    "assets/img/food3.png",
    "assets/img/food4.png",
    "assets/img/food5.png",
    "assets/img/food6.png",

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _imageList.length,
        itemBuilder: (BuildContext cotext, int index){
          return Container(
            width: 250.0,
            margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(_imageList[index])),
          );
        },
      ),
      
    );
  }
}