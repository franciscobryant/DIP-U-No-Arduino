import 'package:flutter/material.dart';
import 'package:onlinelearning/CompletePage.dart';
import 'package:onlinelearning/ProfilePage.dart';
import 'package:onlinelearning/colors/light_color.dart';
import 'package:onlinelearning/CoursePage.dart';
import 'package:onlinelearning/ProjectPage.dart';
import 'package:onlinelearning/ForumPage.dart';
import 'package:onlinelearning/AppendixPage.dart';
import 'package:onlinelearning/QuizPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
      routes: {
        '/appendixPage': (context) => AppendixPage(),
        '/coursePage': (context) => CoursePage(),
        '/projectPage': (context) => ProjectPage(),
        '/forumPage': (context) => ForumPage(),
      },
    );
  }
}

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
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
                  'What do you want to \nlearn today?',
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
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 3),
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            courseWidget(
                                'Basics',
                                'Getting started on Arduino',
                                'img1',
                                Color(0xffff6a65),
                                Color(0xffff5954),
                                'Hardware Tutorial 1',
                                'Introduction to Arduino',
                                'Hardware1',
                                'Hardware Tutorial 2',
                                'Getting to know Arduino',
                                'Hardware2',
                                'Software Tutorial 1',
                                'Place to program!',
                                'Software1',
                                'Software Tutorial 2',
                                'Running your first program',
                                'Software2'),
                            SizedBox(
                              height: 20,
                            ),
                            courseWidget(
                              'Advanced',
                              'Master Arduino',
                              'img2',
                              Color(0xffe9eefa),
                              Colors.white,
                              'Advanced Tutorial 1',
                              'Bluetooth with Arduino',
                              'Advanced1',
                              'Advanced Tutorial 2',
                              'Connecting to Wi-Fi',
                              'Advanced2',
                              'Advanced Tutorial 3',
                              'Image Processing',
                              'Advanced3',
                              'Advanced Tutorial 4',
                              'Internet of Things',
                              'Advanced4',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 3, bottom: 10),
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                            ),
                            courseWidget(
                              'Intermediate',
                              'Level up your skills!',
                              'img3',
                              Color(0xffe9eefa),
                              Colors.white,
                              'Intermediate Tutorial 1',
                              'Dealing with Interrupts',
                              'Intermediate1',
                              'Intermediate Tutorial 2',
                              'Pulse Width Modulation',
                              'Intermediate2',
                              'Intermediate Tutorial 3',
                              'Inter-Integrated Circuits',
                              'Intermediate3',
                              'Intermediate Tutorial 4',
                              'Serial Peripheral Interface',
                              'Intermediate4',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            // courseWidget(
                            //   'Microcontroller',
                            //   'Learn more about them!',
                            //   'img4',
                            //   Color(0xffe9eefa),
                            //   Colors.white,
                            //   'Hardware 1',
                            //   'Introduction to Arduino',
                            //   'Hardware1',
                            //   'Hardware 2',
                            //   'Getting to know Arduino',
                            //   'Hardware2',
                            //   'Software 1',
                            //   'Place to program!',
                            //   'Software1',
                            //   'Software 2',
                            //   'Running your first program',
                            //   'Software2',
                            // ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 20, left: 20, right: 20, bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        offset: Offset(0, 5),
                                        blurRadius: 10,
                                        color: LightColor.lightpurple
                                            .withAlpha(30))
                                  ]),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => QuizPage(),
                                      ));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Color(0xffe9eefa),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                      child: Text(
                                        "Quiz",
                                        style: TextStyle(
                                          color: (Color(0xffe9eefa) ==
                                                  Color(0xffe9eefa)
                                              ? Color(0xff2657ce)
                                              : Colors.white),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Test yourself!',
                                      style: TextStyle(
                                        color:
                                            (Colors.white == Color(0xffff5954))
                                                ? Colors.white
                                                : Colors.black,
                                        fontSize: 20,
                                        height: 1,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          height: 5,
                                          width: 100,
                                          color: (Colors.white ==
                                                  Color(0xffff5954))
                                              ? Colors.red
                                              : Color(0xff2657ce),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 5,
                                            color: (Colors.white ==
                                                    Color(0xffff5954))
                                                ? Colors.white.withOpacity(0.5)
                                                : Color(0xff2657ce)
                                                    .withOpacity(0.5),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Hero(
                                      tag: 'img4',
                                      child: Container(
                                        height: 80,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/img4.png'),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )),
            ),
            Container(
              padding: EdgeInsets.only(top: 17, left: 2, right: 2, bottom: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      "assets/image/teacher.png",
                      color: Color(0xff2657ce),
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
                    onPressed: () {
                      openAppendixPage();
                    },
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

  Container courseWidget(
    String category,
    String title,
    String img,
    Color categoryColor,
    Color bgColor,
    String courseTitle1,
    String courseSubtitle1,
    String pageName1,
    String courseTitle2,
    String courseSubtitle2,
    String pageName2,
    String courseTitle3,
    String courseSubtitle3,
    String pageName3,
    String courseTitle4,
    String courseSubtitle4,
    String pageName4,
  ) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 10,
                color: LightColor.lightpurple.withAlpha(30))
          ]),
      child: InkWell(
        onTap: () {
          openCoursePage(
            '$img',
            '$title',
            '$courseTitle1',
            '$courseSubtitle1',
            '$pageName1',
            '$courseTitle2',
            '$courseSubtitle2',
            '$pageName2',
            '$courseTitle3',
            '$courseSubtitle3',
            '$pageName3',
            '$courseTitle4',
            '$courseSubtitle4',
            '$pageName4',
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                '$category',
                style: TextStyle(
                  color: (categoryColor == Color(0xffe9eefa)
                      ? Color(0xff2657ce)
                      : Colors.white),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$title',
              style: TextStyle(
                color: (bgColor == Color(0xffff5954))
                    ? Colors.white
                    : Colors.black,
                fontSize: 20,
                height: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 5,
                  width: 100,
                  color: (bgColor == Color(0xffff5954))
                      ? Colors.red
                      : Color(0xff2657ce),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    color: (bgColor == Color(0xffff5954))
                        ? Colors.white.withOpacity(0.5)
                        : Color(0xff2657ce).withOpacity(0.5),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Hero(
              tag: '$img',
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/image/$img.png'),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openCoursePage(
      String img,
      String title,
      String courseTitle1,
      String courseSubtitle1,
      String pageName1,
      String courseTitle2,
      String courseSubtitle2,
      String pageName2,
      String courseTitle3,
      String courseSubtitle3,
      String pageName3,
      String courseTitle4,
      String courseSubtitle4,
      String pageName4) {
    Navigator.pushNamed(context, '/coursePage', arguments: {
      'img': '$img',
      'title': '$title',
      'courseTitle1': '$courseTitle1',
      'courseSubtitle1': '$courseSubtitle1',
      'pageName1': '$pageName1',
      'courseTitle2': '$courseTitle2',
      'courseSubtitle2': '$courseSubtitle2',
      'pageName2': '$pageName2',
      'courseTitle3': '$courseTitle3',
      'courseSubtitle3': '$courseSubtitle3',
      'pageName3': '$pageName3',
      'courseTitle4': '$courseTitle4',
      'courseSubtitle4': '$courseSubtitle4',
      'pageName4': '$pageName4',
    });
  }

  void openAppendixPage() {
    Navigator.pushNamed(context, '/appendixPage');
  }

  void openProjectPage() {
    Navigator.pushNamed(context, '/projectPage');
  }

  void openForumPage() {
    Navigator.pushNamed(context, '/forumPage');
  }
}
