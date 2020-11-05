import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:onlinelearning/AppendixPage.dart';
import 'package:onlinelearning/ProjectPage.dart';
import 'package:onlinelearning/MainPage.dart';

class ForumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: forumPage(),
      routes: {
        '/appendixPage': (context) => AppendixPage(),
        '/projectPage': (context) => ProjectPage(),
        '/mainPage': (context) => MainPage(),
      },
    );
  }
}

class forumPage extends StatefulWidget {
  @override
  _forumPageState createState() => _forumPageState();
}

class _forumPageState extends State<forumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: WebView(
                initialUrl: "https://forum.arduino.cc",
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 17, left: 12, right: 12, bottom: 17),
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
                    icon: Image.asset(
                      "assets/image/communication.png",
                      color: Color(0xff2657ce),
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

  void openAppendixPage() {
    Navigator.pushNamed(context, '/appendixPage');
  }

  void openProjectPage() {
    Navigator.pushNamed(context, '/projectPage');
  }

  void openMainPage() {
    Navigator.pushNamed(context, '/mainPage');
  }
}
