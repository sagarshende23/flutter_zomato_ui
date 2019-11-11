import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zomato/screens/main_page.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'screens/auth_page.dart';
import 'screens/calendar_page.dart';

import 'utils/class_builder.dart';

void main() {
  ClassBuilder.registerClasses();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatefulWidget {
  MainWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: ClassBuilder.fromString('MainPage'),
      items: [
        KFDrawerItem.initWithPage(
          text: Text(
            'Home',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Product Sans',
                fontSize: 20.0),
          ),
          // icon: Icon(Icons.home, color: Colors.white),
          page: MainPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Notification',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Product Sans',
                fontSize: 20.0),
          ),
          // icon: Icon(Icons.calendar_today, color: Colors.white),
          page: CalendarPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Zomato Gold',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Product Sans',
                fontSize: 20.0),
          ),
          // icon: Icon(Icons.settings, color: Colors.white),
          page: ClassBuilder.fromString('SettingsPage'),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Payment',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Product Sans',
                fontSize: 20.0),
          ),
          // icon: Icon(Icons.calendar_today, color: Colors.white),
          page: CalendarPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Help',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Product Sans',
                fontSize: 20.0),
          ),
          // icon: Icon(Icons.calendar_today, color: Colors.white),
          page: CalendarPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Settings',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Product Sans',
                fontSize: 20.0),
          ),
          // icon: Icon(Icons.calendar_today, color: Colors.white),
          page: CalendarPage(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
//        borderRadius: 0.0,
//        shadowBorderRadius: 0.0,
//        menuPadding: EdgeInsets.all(0.0),
//        scrollable: true,
        controller: _drawerController,
        header: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    // width: MediaQuery.of(context).size.width * 0.6,
                    child: IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 35.0,
                      ),
                      onPressed: () {},
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 50.0, top: 20.0),
                  child: Text(
                    "Hello,",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                      fontFamily: 'Product Sans',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Himanshu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                      fontFamily: 'Product Sans',
                    ),
                  ),
                ),
              ],
            )),
        footer: KFDrawerItem(
          text: Text(
            'Logout',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Product Sans',
                fontSize: 20.0),
          ),
          icon: Icon(
            Icons.input,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return AuthPage();
              },
            ));
          },
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // colors: [
            //   Color.fromRGBO(255, 255, 255, 1.0),
            //   Color.fromRGBO(44, 72, 171, 1.0)
            // ],
            colors: [Colors.white, Color(0xFFF8E0E5)],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}
