import 'package:flutter/material.dart';
import 'package:onlinelearning/ForumPage.dart';
import 'package:onlinelearning/AppendixPage.dart';
import 'package:onlinelearning/MainPage.dart';
import 'package:onlinelearning/ProfilePage.dart';
import 'package:onlinelearning/projects/ArduinoPiano.dart';
import 'package:onlinelearning/projects/MotionTracking.dart';
import 'helper/quad_clipper.dart';
import 'colors/light_color.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: projectPage(),
      routes: {
        '/forumPage': (context) => ForumPage(),
        '/appendixPage': (context) => AppendixPage(),
        '/mainPage': (context) => MainPage(),
        '/arduinoPiano': (context) => ArduinoPiano(),
        '/motionTracking': (context) => MotionTracking(),
      },
    );
  }
}

class projectPage extends StatefulWidget {
  @override
  _projectPageState createState() => _projectPageState();
}

class _projectPageState extends State<projectPage> {
  double width;

  Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }

  Widget _categoryRow(
    String title,
    Color primary,
    Color textColor,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: LightColor.titleTextColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _featuredRowA() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            InkWell(
              onTap: () {
                openProjectDescription1();
              },
              child: _card(
                  primary: LightColor.purple,
                  backWidget: _decorationContainerA(Colors.white, 50, -30),
                  chipColor: LightColor.orange,
                  chipText1: "Arduino Piano",
                  isPrimaryCard: true,
                  imgPath:
                      "https://e7.pngegg.com/pngimages/143/1008/png-clipart-arduino-integrated-development-environment-open-source-hardware-computer-software-installation-skin-miscellaneous-electronics.png"),
            ),
            _card(
                primary: Colors.white,
                chipColor: LightColor.seeBlue,
                backWidget: _decorationContainerB(Colors.white, 90, -40),
                chipText1: "Tic Tac Toe Game",
                isPrimaryCard: true,
                imgPath:
                    "https://e7.pngegg.com/pngimages/143/1008/png-clipart-arduino-integrated-development-environment-open-source-hardware-computer-software-installation-skin-miscellaneous-electronics.png"),
            _card(
                primary: Colors.white,
                chipColor: LightColor.lightOrange,
                backWidget: _decorationContainerC(Colors.white, 50, -30),
                chipText1: "Door Open Monitoring",
                isPrimaryCard: true,
                imgPath:
                    "https://www.raspberrypi.org/wp-content/uploads/2011/10/Raspi-PGB001.png"),
            _card(
                primary: Colors.white,
                chipColor: LightColor.seeBlue,
                backWidget: _decorationContainerD(LightColor.seeBlue, -50, 30,
                    secondary: LightColor.lightseeBlue,
                    secondaryAccent: LightColor.darkseeBlue),
                chipText1: "Smoke Detector System",
                isPrimaryCard: true,
                imgPath:
                    "https://e7.pngegg.com/pngimages/143/1008/png-clipart-arduino-integrated-development-environment-open-source-hardware-computer-software-installation-skin-miscellaneous-electronics.png"),
          ],
        ),
      ),
    );
  }

  Widget _featuredRowB() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            InkWell(
              onTap: () {
                openProjectDescription2();
              },
              child: _card(
                  primary: Colors.white,
                  chipColor: LightColor.seeBlue,
                  backWidget: _decorationContainerD(
                      LightColor.darkseeBlue, -100, -65,
                      secondary: LightColor.lightseeBlue,
                      secondaryAccent: LightColor.seeBlue),
                  chipText1: "Motion Tracking Camera Unit",
                  isPrimaryCard: true,
                  imgPath:
                      "https://e7.pngegg.com/pngimages/143/1008/png-clipart-arduino-integrated-development-environment-open-source-hardware-computer-software-installation-skin-miscellaneous-electronics.png"),
            ),
            _card(
                primary: Colors.white,
                chipColor: LightColor.lightOrange,
                backWidget: _decorationContainerF(
                    LightColor.lightOrange, LightColor.orange, 50, -30),
                chipText1: "Robotic Arm with RasPi",
                isPrimaryCard: true,
                imgPath:
                    "https://www.raspberrypi.org/wp-content/uploads/2011/10/Raspi-PGB001.png"),
            _card(
                primary: Colors.white,
                chipColor: LightColor.lightpurple,
                backWidget: _decorationContainerE(
                  LightColor.lightpurple,
                  90,
                  -40,
                  secondary: LightColor.lightseeBlue,
                ),
                chipText1: "Bluetooth LED Controller",
                isPrimaryCard: true,
                imgPath:
                    "https://e7.pngegg.com/pngimages/143/1008/png-clipart-arduino-integrated-development-environment-open-source-hardware-computer-software-installation-skin-miscellaneous-electronics.png"),
            _card(
                primary: Colors.white,
                backWidget: _decorationContainerA(
                  LightColor.lightOrange2,
                  -50,
                  30,
                ),
                chipText1: "Water Quality Monitoring",
                isPrimaryCard: true,
                imgPath:
                    "https://www.raspberrypi.org/wp-content/uploads/2011/10/Raspi-PGB001.png"),
          ],
        ),
      ),
    );
  }

  Widget _featuredRowC() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            _card(
                primary: Colors.white,
                chipColor: LightColor.seeBlue,
                backWidget: _decorationContainerC(
                  LightColor.darkseeBlue,
                  -100,
                  -65,
                ),
                chipText1: "RPi Sonar (UltraSonic Sensor)",
                isPrimaryCard: true,
                imgPath:
                    "https://www.raspberrypi.org/wp-content/uploads/2011/10/Raspi-PGB001.png"),
            _card(
                primary: Colors.white,
                chipColor: LightColor.lightOrange,
                backWidget:
                    _decorationContainerB(LightColor.lightOrange, 50, -30),
                chipText1: "Arduino Weather Forecast",
                isPrimaryCard: true,
                imgPath:
                    "https://e7.pngegg.com/pngimages/143/1008/png-clipart-arduino-integrated-development-environment-open-source-hardware-computer-software-installation-skin-miscellaneous-electronics.png"),
            _card(
                primary: Colors.white,
                chipColor: LightColor.lightpurple,
                backWidget: _decorationContainerF(
                  LightColor.lightpurple,
                  LightColor.lightseeBlue,
                  90,
                  -40,
                ),
                chipText1: "4WD Arduino RC Car",
                isPrimaryCard: true,
                imgPath:
                    "https://e7.pngegg.com/pngimages/143/1008/png-clipart-arduino-integrated-development-environment-open-source-hardware-computer-software-installation-skin-miscellaneous-electronics.png"),
            _card(
                primary: Colors.white,
                backWidget: _decorationContainerE(
                    LightColor.lightOrange2, -50, 30,
                    secondary: LightColor.seeBlue),
                chipText1: "6 Channel Osciloscope",
                isPrimaryCard: true,
                imgPath:
                    "https://www.raspberrypi.org/wp-content/uploads/2011/10/Raspi-PGB001.png"),
          ],
        ),
      ),
    );
  }

  Widget _card(
      {Color primary = Colors.redAccent,
      String imgPath,
      String chipText1 = '',
      Widget backWidget,
      Color chipColor = LightColor.orange,
      bool isPrimaryCard = false}) {
    return Container(
        height: isPrimaryCard ? 190 : 180,
        width: isPrimaryCard ? width * .32 : width * .32,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
            color: primary.withAlpha(200),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  color: LightColor.lightpurple.withAlpha(20))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            child: Stack(
              children: <Widget>[
                backWidget,
                Positioned(
                    top: 20,
                    left: 15,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      backgroundImage: NetworkImage(imgPath),
                    )),
                Positioned(
                  top: 105,
                  left: 15,
                  child: _cardInfo(
                      chipText1, LightColor.titleTextColor, chipColor,
                      isPrimaryCard: isPrimaryCard),
                )
              ],
            ),
          ),
        ));
  }

  Widget _cardInfo(String title, Color textColor, Color primary,
      {bool isPrimaryCard = false}) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 25),
            width: width * .32,
            alignment: Alignment.topCenter,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold, color: textColor),
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }

  Widget _chip(String text, Color textColor,
      {double height = 0, bool isPrimaryCard = false}) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: height),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: textColor.withAlpha(isPrimaryCard ? 200 : 50),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isPrimaryCard ? Colors.white : textColor, fontSize: 12),
      ),
    );
  }

  Widget _decorationContainerA(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: primary.withAlpha(255),
          ),
        ),
        _smallContainer(primary, 20, 40),
        Positioned(
          top: 20,
          right: -30,
          child: _circularContainer(80, Colors.transparent,
              borderColor: Colors.white),
        )
      ],
    );
  }

  Widget _decorationContainerB(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -65,
          right: -65,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.blue.shade100,
            child: CircleAvatar(radius: 30, backgroundColor: primary),
          ),
        ),
        Positioned(
            top: 35,
            right: -40,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: LightColor.lightseeBlue, radius: 40)))
      ],
    );
  }

  Widget _decorationContainerC(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -105,
          left: -35,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: LightColor.orange.withAlpha(100),
          ),
        ),
        Positioned(
            top: 35,
            right: -40,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: LightColor.orange, radius: 40))),
        _smallContainer(
          LightColor.yellow,
          35,
          70,
        )
      ],
    );
  }

  Widget _decorationContainerD(Color primary, double top, double left,
      {Color secondary, Color secondaryAccent}) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: secondary,
          ),
        ),
        _smallContainer(LightColor.yellow, 18, 35, radius: 12),
        Positioned(
          top: 130,
          left: -50,
          child: CircleAvatar(
            radius: 80,
            backgroundColor: primary,
            child: CircleAvatar(radius: 50, backgroundColor: secondaryAccent),
          ),
        ),
        Positioned(
          top: -30,
          right: -40,
          child: _circularContainer(80, Colors.transparent,
              borderColor: Colors.white),
        )
      ],
    );
  }

  Widget _decorationContainerE(Color primary, double top, double left,
      {Color secondary}) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -105,
          left: -35,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: primary.withAlpha(100),
          ),
        ),
        Positioned(
            top: 40,
            right: -25,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(backgroundColor: primary, radius: 40))),
        Positioned(
            top: 45,
            right: -50,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(backgroundColor: secondary, radius: 50))),
        _smallContainer(LightColor.yellow, 15, 90, radius: 5)
      ],
    );
  }

  Widget _decorationContainerF(
      Color primary, Color secondary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
            top: 25,
            right: -20,
            child: RotatedBox(
              quarterTurns: 1,
              child: ClipRect(
                  clipper: QuadClipper(),
                  child: CircleAvatar(
                      backgroundColor: primary.withAlpha(100), radius: 50)),
            )),
        Positioned(
            top: 34,
            right: -8,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: secondary.withAlpha(100), radius: 40))),
        _smallContainer(LightColor.yellow, 15, 90, radius: 5)
      ],
    );
  }

  Positioned _smallContainer(Color primary, double top, double left,
      {double radius = 10}) {
    return Positioned(
        top: top,
        left: left,
        child: CircleAvatar(
          radius: radius,
          backgroundColor: primary.withAlpha(255),
        ));
  }

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
                  'What do you want to \nmake today?',
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
                            image: AssetImage('assets/image/profilePic.png'))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  _categoryRow(
                      "- BEGINNER -", LightColor.orange, LightColor.orange),
                  _featuredRowA(),
                  SizedBox(height: 18),
                  _categoryRow("- INTERMEDIATE -", LightColor.purple,
                      LightColor.darkpurple),
                  _featuredRowB(),
                  SizedBox(height: 18),
                  _categoryRow(
                      "- ADVANCED -", LightColor.orange, LightColor.orange),
                  _featuredRowC(),
                  SizedBox(height: 5),
                ],
              )),
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
                    // icon: Icon(
                    //   Icons.developer_board,
                    //   color: Color(0xff2657ce).withOpacity(0.5),
                    //   size: 40,
                    // ),
                    icon: Image.asset(
                      "assets/image/teacher.png",
                      color: Color(0xff2657ce).withOpacity(0.5),
                    ),
                    iconSize: 45,
                  ),
                  IconButton(
                    // icon: Icon(
                    //   Icons.lightbulb_outline,
                    //   color: Color(0xff2657ce),
                    //   size: 40,
                    // ),
                    icon: Image.asset(
                      "assets/image/repair-tools.png",
                      color: Color(0xff2657ce),
                    ),
                    iconSize: 45,
                  ),
                  IconButton(
                    onPressed: () {
                      openForumPage();
                    },
                    // icon: Icon(
                    //   Icons.chat,
                    //   color: Color(0xff2657ce).withOpacity(0.5),
                    //   size: 40,
                    // ),
                    icon: Image.asset(
                      "assets/image/communication.png",
                      color: Color(0xff2657ce).withOpacity(0.5),
                    ),
                    iconSize: 45,
                  ),
                  IconButton(
                    onPressed: () {
                      openAppendixPage();
                    },
                    // icon: Icon(
                    //   Icons.memory,
                    //   color: Color(0xff2657ce).withOpacity(0.5),
                    //   size: 40,
                    // ),
                    icon: Image.asset(
                      "assets/image/controller.png",
                      color: Color(0xff2657ce).withOpacity(0.5),
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

  void openProjectDescription1() {
    Navigator.pushNamed(context, '/arduinoPiano');
  }

  void openProjectDescription2() {
    Navigator.pushNamed(context, '/motionTracking');
  }

  void openForumPage() {
    Navigator.pushNamed(context, '/forumPage');
  }

  void openAppendixPage() {
    Navigator.pushNamed(context, '/appendixPage');
  }

  void openMainPage() {
    Navigator.pushNamed(context, '/mainPage');
  }
}
