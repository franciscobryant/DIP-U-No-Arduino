import 'package:flutter/material.dart';
import 'package:onlinelearning/basictutorial/Hardware_Tutorial1_Page4.dart';

//page 2

class Hardware_Tutorial1_Page_3 extends StatefulWidget {
  @override
  _Hardware_Tutorial1_Page_3State createState() =>
      _Hardware_Tutorial1_Page_3State();
}

class _Hardware_Tutorial1_Page_3State extends State<Hardware_Tutorial1_Page_3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffba68c8),
          title: Text("Hardware Tutorial 1 (Page 3)"),
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
          child: Image.asset('assets/image/Hardware_Slide4.jpg'), //   <-- image
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
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => Hardware_Tutorial1_Page4()));
}
