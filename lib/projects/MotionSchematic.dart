import 'package:flutter/material.dart';
import 'package:onlinelearning/colors/light_color.dart';
import 'package:onlinelearning/projects/MotionTracking.dart';

class MotionSchematic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: motionSchematic(),
      routes: {
        '/motionTracking': (context) => MotionTracking(),
      },
    );
  }
}

class motionSchematic extends StatefulWidget {
  @override
  _motionSchematicState createState() => _motionSchematicState();
}

class _motionSchematicState extends State<motionSchematic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 30),
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffe1eaff),
                      ),
                      child: IconButton(
                        onPressed: () {
                          openMotionTracking();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff2657ce),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Schematic',
                          style: TextStyle(
                            color: LightColor.titleTextColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Block Diagram',
                          style: TextStyle(
                            fontSize: 18,
                            color: LightColor.subTitleTextColor,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Image.asset(
                            "assets/image/motionBlockDiagram.jpeg",
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Circuit Diagram',
                          style: TextStyle(
                            fontSize: 18,
                            color: LightColor.subTitleTextColor,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Image.asset(
                            "assets/image/motionCircuitDiagram.jpeg",
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Base Construction 1',
                          style: TextStyle(
                            fontSize: 18,
                            color: LightColor.subTitleTextColor,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Image.asset(
                            "assets/image/motionBaseConstruction.jpeg",
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Base Construction 2',
                          style: TextStyle(
                            fontSize: 18,
                            color: LightColor.subTitleTextColor,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Image.asset(
                            "assets/image/motionBaseConstruction 2.jpeg",
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openMotionTracking() {
    Navigator.pushNamed(context, '/motionTracking');
  }
}
