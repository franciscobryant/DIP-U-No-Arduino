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
                initialUrl: "https://forum.arduino.cc/",
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 20),
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
                    onPressed: () {
                      openProjectPage();
                    },
                    icon: Icon(
                      Icons.lightbulb_outline,
                      color: Color(0xff2657ce).withOpacity(0.5),
                      size: 40,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chat,
                      color: Color(0xff2657ce),
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
