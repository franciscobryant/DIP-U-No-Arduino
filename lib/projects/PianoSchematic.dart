import 'package:flutter/material.dart';
import 'package:onlinelearning/projects/ArduinoPiano.dart';
import 'package:onlinelearning/colors/light_color.dart';

class PianoSchematic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pianoSchematic(),
      routes: {
        '/arduinoPiano': (context) => ArduinoPiano(),
      },
    );
  }
}

class pianoSchematic extends StatefulWidget {
  @override
  _pianoSchematicState createState() => _pianoSchematicState();
}

class _pianoSchematicState extends State<pianoSchematic> {
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
                          openArduinoPiano();
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
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Image.asset(
                        "assets/image/pianoSchematic.JPG",
                        width: MediaQuery.of(context).size.width,
                      ),
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

  void openArduinoPiano() {
    Navigator.pushNamed(context, '/arduinoPiano');
  }
}
