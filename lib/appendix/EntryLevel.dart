import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinelearning/colors/light_color.dart';
import 'package:onlinelearning/AppendixPage.dart';

class EntryLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: entryLevel(),
      routes: {
        '/appendixPage': (context) => AppendixPage(),
      },
    );
  }
}

class entryLevel extends StatefulWidget {
  @override
  _entryLevelState createState() => _entryLevelState();
}

class _entryLevelState extends State<entryLevel> {
  double width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
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
                          openHomePage();
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
                          'Entry Level',
                          style: TextStyle(
                            color: LightColor.titleTextColor,
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Get started with Arduino using Entry Level products: easy to use and ready to power your first creative projects. These boards and modules are the best to start learning and tinkering with electronics and coding.\n',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              child: new AlertDialog(
                                content: Text(
                                  'OVERVIEW:\n"Uno" means one in Italian and was chosen to mark the release of Arduino Software (IDE) 1.0. The Uno board and version 1.0 of Arduino Software (IDE) were the reference versions of Arduino, now evolved to newer releases. The Uno board is the first in a series of USB Arduino boards, and the reference model for the Arduino platform; for an extensive list of current, past or outdated boards see the Arduino index of boards.\n\nTECH SPEC:\nMicrocontroller: ATmega328P\nOperating Voltage: 5V\nInput Voltage (recommended): 7-12V\nInput Voltage (limit): 6-20V\nDigital I/O Pins: 14 (of which 6 provide PWM output)\nAnalog Input Pins: 6\nClock Speed: 16 MHz\nLED_BUILTIN: 13',
                                  style: TextStyle(color: Colors.indigo),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 195,
                            width: width * .36,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10,
                                      color:
                                          LightColor.lightpurple.withAlpha(40))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/image/arduino_uno.jpg",
                                  width: 140,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'Arduino Uno',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              child: new AlertDialog(
                                content: Text(
                                  'OVERVIEW:\nThe Arduino Nano is a small, complete, and breadboard-friendly board based on the ATmega328 (Arduino Nano 3.x). It has more or less the same functionality of the Arduino Duemilanove, but in a different package. It lacks only a DC power jack, and works with a Mini-B USB cable instead of a standard one.\n\nTECH SPEC:\nMicrocontroller: ATmega328\nArchitecture: AVR\nOperating Voltage: 5 V\nInput Voltage: 7-12 V\nDigital I/O Pins: 22 (6 of which are PWM)\nClock Speed: 16 MHz',
                                  style: TextStyle(
                                    color: Colors.indigo,
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 195,
                            width: width * .35,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10.0,
                                      color:
                                          LightColor.lightpurple.withAlpha(40))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/image/arduino_nano.jpg",
                                  width: 142,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Arduino Nano",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              child: new AlertDialog(
                                content: Text(
                                  'OVERVIEW:\nArduino Leonardo has 20 digital input/output pins (of which 7 can be used as PWM outputs and 12 as analog inputs), a 16 MHz crystal oscillator, a micro USB connection, a power jack, an ICSP header, and a reset button. It contains everything needed to support the microcontroller; simply connect it to a computer with a USB cable or power it with a AC-to-DC adapter or battery to get started.\n\nTECH SPEC:\nMicrocontroller: ATmega32u4\nOperating Voltage: 5V\nInput Voltage: 7-12V\nInput Voltage (limits): 6-20V\nDigital I/O Pins: 20\nPWM Channels: 7\nAnalog Input Channels: 12\nClock Speed: 16 MHz',
                                  style: TextStyle(
                                    color: Colors.indigo,
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 195,
                            width: width * .35,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10.0,
                                      color:
                                          LightColor.lightpurple.withAlpha(40))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/image/arduino_leonardo.jpg",
                                  width: 142,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Arduino\nLeonardo",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              child: new AlertDialog(
                                content: Text(
                                  'OVERVIEW:\nThe Micro come with a build-in USB which makes the Micro recognizable as a mouse or keyboard\n\nThe Micro has 20 digital input/output pins (of which 7 can be used as PMW outputs and 12 as analog inputs)\n\nTECH SPEC:\nOperating Voltage: 5V\nInput Voltage: 7-9V\nDigital I/O Pins: 20\nPWM Channels: 7\nAnalog Input Channels: 12\nClock Speed: 16 MHz',
                                  style: TextStyle(
                                    color: Colors.indigo,
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 195,
                            width: width * .35,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10.0,
                                      color:
                                          LightColor.lightpurple.withAlpha(40))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/image/arduino_mirco.jpg",
                                  width: 142,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Arduino Micro",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
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

  void openHomePage() {
    Navigator.pushNamed(context, '/appendixPage');
  }
}
