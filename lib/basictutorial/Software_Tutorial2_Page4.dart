import 'package:flutter/material.dart';
import 'package:onlinelearning/basictutorial/Software_Tutorial2_Page5.dart';

class Software_Tutorial2_Page_4 extends StatefulWidget {
  @override
  _Software_Tutorial2_Page_4State createState() =>
      _Software_Tutorial2_Page_4State();
}

class _Software_Tutorial2_Page_4State extends State<Software_Tutorial2_Page_4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffba68c8),
          title: Text("Software Tutorial 2 (Page 4)"),
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
              Image.asset('assets/image/Software_Slide17.jpg'), //   <-- image
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
      MaterialPageRoute(builder: (context) => Software_Tutorial2_Page_5()));
}
