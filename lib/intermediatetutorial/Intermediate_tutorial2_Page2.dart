import 'package:flutter/material.dart';
import 'package:onlinelearning/CompletePage.dart';

class Intermediate_Tutorial2_Page_2 extends StatefulWidget {
  @override
  _Intermediate_Tutorial2_Page_2State createState() =>
      _Intermediate_Tutorial2_Page_2State();
}

class _Intermediate_Tutorial2_Page_2State
    extends State<Intermediate_Tutorial2_Page_2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffba68c8),
          title: Text("Intermediate Tutorial 2 (Page 2)"),
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
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
          ),
        ),
        body: Center(
          child: Image.asset(
              'assets/image/Intermediate_Slide26.jpg'), //   <-- image
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
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => CompletePage()));
}
