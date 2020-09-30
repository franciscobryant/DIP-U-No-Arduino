import 'package:flutter/material.dart';
import 'package:onlinelearning/ForumPage.dart';
import 'package:onlinelearning/AppendixPage.dart';
import 'package:onlinelearning/MainPage.dart';

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
      },
    );
  }
}

class projectPage extends StatefulWidget {
  @override
  _projectPageState createState() => _projectPageState();
}

class _projectPageState extends State<projectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Hello Jessica!",
                  style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/image/profilePic.png'))),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),

            // put here for the content

            Container(
              padding:
                  EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      openMainPage();
                    },
                    icon: Icon(
                      Icons.developer_board,
                      color: Color(0xff2657ce).withOpacity(0.5),
                      size: 40,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.lightbulb_outline,
                      color: Color(0xff2657ce),
                      size: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      openForumPage();
                    },
                    icon: Icon(
                      Icons.chat,
                      color: Color(0xff2657ce).withOpacity(0.5),
                      size: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      openAppendixPage();
                    },
                    icon: Icon(
                      Icons.memory,
                      color: Color(0xff2657ce).withOpacity(0.5),
                      size: 40,
                    ),
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

  void openAppendixPage() {
    Navigator.pushNamed(context, '/appendixPage');
  }

  void openMainPage() {
    Navigator.pushNamed(context, '/mainPage');
  }
}
