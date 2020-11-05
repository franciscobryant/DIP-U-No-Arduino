import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinelearning/MainPage.dart';
import 'package:webview_flutter/webview_flutter.dart';

class QuizPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  QuizPage_State createState() => QuizPage_State();
}

class QuizPage_State extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Color(0xffba68c8),
        title: Text("Take the Quiz!"),
        leading: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xffba68c8),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: WebView(
                initialUrl:
                    "https://www.classmarker.com/register/online-test-taker/",
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Finish'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainPage(),
            ),
          );
        },
      ),
    );
  }
}
