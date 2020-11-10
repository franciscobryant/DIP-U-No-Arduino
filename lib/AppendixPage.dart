import 'package:flutter/material.dart';
import 'package:onlinelearning/ProfilePage.dart';
import 'package:onlinelearning/appendix/EnhancedFeatures.dart';
import 'package:onlinelearning/appendix/EntryLevel.dart';
import 'package:onlinelearning/appendix/IoT.dart';
import 'package:onlinelearning/appendix/Retired.dart';
import 'package:onlinelearning/colors/light_color.dart';
import 'package:onlinelearning/ForumPage.dart';
import 'package:onlinelearning/ProjectPage.dart';
import 'package:onlinelearning/MainPage.dart';
import 'package:carousel_pro/carousel_pro.dart';

class AppendixPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: appendixPage(),
      routes: {
        '/forumPage': (context) => ForumPage(),
        '/projectPage': (context) => ProjectPage(),
        '/mainPage': (context) => MainPage(),
        '/entryLevel': (context) => EntryLevel(),
        '/enhancedFeatures': (context) => EnhancedFeatures(),
        '/ioT': (context) => IoT(),
        '/retired': (context) => Retired()
      },
    );
  }
}

class appendixPage extends StatefulWidget {
  @override
  _appendixPageState createState() => _appendixPageState();
}

class _appendixPageState extends State<appendixPage> {
  double width;

  Widget image_carousel = new Container(
    height: 270.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/image/arduino_uno.jpg'),
        AssetImage('assets/image/arduino_101.jpg'),
        AssetImage('assets/image/arduino_leonardo.jpg'),
        AssetImage('assets/image/arduino_nano.jpg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1500),
      dotSize: 4.5,
      dotColor: Colors.cyanAccent,
      indicatorBgPadding: 8.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(top: 55, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "A page about all kinds of \nArduino boards",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ));
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/image/john_orange.png'))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    image_carousel,
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        InkWell(
                          onTap: () => Navigator.of(context).push(
                              new MaterialPageRoute(
                                  builder: (context) => new EntryLevel())),
                          child: Container(
                            height: 195,
                            width: width * .36,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10,
                                      color:
                                          LightColor.lightpurple.withAlpha(40))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/image/entry.jpg",
                                  width: 80,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Entry Level",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Get started with Arduino",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.of(context).push(
                              new MaterialPageRoute(
                                  builder: (context) =>
                                      new EnhancedFeatures())),
                          child: Container(
                            height: 195,
                            width: width * .36,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10,
                                      color:
                                          LightColor.lightpurple.withAlpha(40))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/image/enhanced.png",
                                    width: 80),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Enhanced \n  Features",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Advanced Functionalities",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        InkWell(
                          onTap: () => Navigator.of(context).push(
                              new MaterialPageRoute(
                                  builder: (context) => new IoT())),
                          child: Container(
                            height: 195,
                            width: width * .36,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10,
                                      color:
                                          LightColor.lightpurple.withAlpha(40))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/image/iot.png",
                                  width: 80,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "IoT",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Internet of Things",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.of(context).push(
                              new MaterialPageRoute(
                                  builder: (context) => new Retired())),
                          child: Container(
                            height: 195,
                            width: width * .36,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10,
                                      color:
                                          LightColor.lightpurple.withAlpha(40))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/image/retired.jpg",
                                  width: 90,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Retired",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Older Arduino stuff",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              // put here for the content
            ),
            Container(
              padding: EdgeInsets.only(top: 17, left: 2, right: 2, bottom: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      openMainPage();
                    },
                    icon: Image.asset(
                      "assets/image/teacher.png",
                      color: Color(0xff2657ce).withOpacity(0.5),
                    ),
                    iconSize: 45,
                  ),
                  IconButton(
                    onPressed: () {
                      openProjectPage();
                    },
                    icon: Image.asset(
                      "assets/image/repair-tools.png",
                      color: Color(0xff2657ce).withOpacity(0.5),
                    ),
                    iconSize: 45,
                  ),
                  IconButton(
                    onPressed: () {
                      openForumPage();
                    },
                    icon: Image.asset(
                      "assets/image/communication.png",
                      color: Color(0xff2657ce).withOpacity(0.5),
                    ),
                    iconSize: 45,
                  ),
                  IconButton(
                    icon: Image.asset(
                      "assets/image/controller.png",
                      color: Color(0xff2657ce),
                    ),
                    iconSize: 45,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void openForumPage() {
    Navigator.pushNamed(context, '/forumPage');
  }

  void openProjectPage() {
    Navigator.pushNamed(context, '/projectPage');
  }

  void openMainPage() {
    Navigator.pushNamed(context, '/mainPage');
  }
}
