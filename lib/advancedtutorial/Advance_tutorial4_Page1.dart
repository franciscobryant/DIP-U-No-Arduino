import 'package:flutter/material.dart';
import 'package:onlinelearning/MainPage.dart';

class Advance_Tutorial4_Page_1 extends StatefulWidget {
  @override
  _Advance_Tutorial4_Page_1State createState() =>
      _Advance_Tutorial4_Page_1State();
}

class _Advance_Tutorial4_Page_1State extends State<Advance_Tutorial4_Page_1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffba68c8),
          title: Text("Advance Tutorial 4 (Page 1)"),
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
        body: Center(
          child:
              Image.asset('assets/image/Work_In_Progress.png'), //   <-- image
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text('Next'),
          onPressed: () {
            navigateToSubPage(context);
          },
        ),
      ),
    );
  }
}

Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
}
