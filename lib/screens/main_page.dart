import 'package:flutter/material.dart';
import 'package:flutter_zomato/mainScreen/circular_images.dart';
import 'package:flutter_zomato/mainScreen/horizontal_images.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';

class MainPage extends KFDrawerContent {
  MainPage({
    Key key,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   int currentPage = 0;
  String currentTitle = "Home";
  Color currentColor = Colors.white;
  Color inactiveColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD2344F),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              // Row(
              //   children: <Widget>[
              //     ClipRRect(
              //       borderRadius: BorderRadius.all(Radius.circular(32.0)),
              //       child: Material(
              //         shadowColor: Colors.transparent,
              //         color: Colors.transparent,
              //         child: IconButton(
              //           icon: Icon(
              //             Icons.menu,
              //             color: Colors.black,
              //           ),
              //           onPressed: widget.onMenuPressed,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: double.infinity,
                      child: Image.asset('assets/img/custom – 1.png'),
                    ),
                    CircularImages(),
                    HorizontalImages()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
         bottomNavigationBar: CubertoBottomBar(
           barBackgroundColor:  Color(0xFFD2344F),
        inactiveIconColor: inactiveColor,
        tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND,
        initialSelection: 0,
//        drawer: CubertoDrawer(style: CubertoDrawerStyle.END_DRAWER, icon: Icon(Icons.sort)),
        tabs: [
          TabData(
              iconData: Icons.home, title: "Home", tabColor: Colors.white),
        
          TabData(
              iconData: Icons.favorite_border,
              title: "Alarm",
              tabColor: Colors.white),
                TabData(
              iconData: Icons.search, title: "Search", tabColor: Colors.white),
          TabData(
              iconData: Icons.donut_small,
              title: "Profile",
              tabColor: Colors.white),
        ],
        onTabChangedListener: (position, title, color) {
          setState(() {
            currentPage = position;
            currentTitle = title;
            currentColor = color;
          });
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
