import 'package:flutter/material.dart';
import 'package:onlinelearning/projects/CodePage.dart';
import 'package:onlinelearning/projects/MotionComponents.dart';
import 'package:onlinelearning/projects/MotionSchematic.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:onlinelearning/ProjectPage.dart';
import 'package:onlinelearning/colors/light_color.dart';

class MotionTracking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: motionTracking(),
      routes: {
        '/projectPage': (context) => ProjectPage(),
        '/motionSchematic': (context) => MotionSchematic(),
        '/codePage': (context) => CodePage(),
        '/motionComponents': (context) => MotionComponents(),
      },
    );
  }
}

class motionTracking extends StatefulWidget {
  @override
  _motionTrackingState createState() => _motionTrackingState();
}

class _motionTrackingState extends State<motionTracking> {
  String videoUrl =
      "https://www.youtube.com/watch?v=DCwwXhn4sdg&feature=youtu.be";

  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoUrl),
        flags: YoutubePlayerFlags(
          autoPlay: false,
        ));

    super.initState();
  }

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
                          openProjectPage();
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
                          'Motion Tracking',
                          style: TextStyle(
                            color: LightColor.titleTextColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              child: new AlertDialog(
                                content: Image.asset(
                                    "assets/image/creator profile.jpg"),
                              ),
                            );
                          },
                          child: Container(
                            height: 130,
                            width: width * .32,
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
                                  "assets/image/projectCredits.png",
                                  width: 42,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Credits",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Author of The Project",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            openMotionSchematic();
                          },
                          child: Container(
                            height: 130,
                            width: width * .32,
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
                                  "assets/image/projectSchematic.png",
                                  width: 42,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Schematic",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Hardware Connection",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 10,
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
                            openCodePage(
                                content.title, content.subtitle, content.code);
                          },
                          child: Container(
                            height: 130,
                            width: width * .32,
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
                                  "assets/image/projectCode.png",
                                  width: 42,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Code",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Software Algorithm",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            openMotionComponents();
                          },
                          child: Container(
                            height: 130,
                            width: width * .32,
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
                                  "assets/image/projectComponents.png",
                                  width: 42,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Components",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Electronic Parts",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
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

  void openProjectPage() {
    Navigator.pushNamed(context, '/projectPage');
  }

  void openMotionSchematic() {
    Navigator.pushNamed(context, '/motionSchematic');
  }

  void openCodePage(String title, String subtitle, String code) {
    Navigator.pushNamed(context, '/codePage', arguments: {
      'title': '$title',
      'subtitle': '$subtitle',
      'code': '$code',
    });
  }

  void openMotionComponents() {
    Navigator.pushNamed(context, '/motionComponents');
  }
}

class CodePageData {
  String title;
  String subtitle;
  String code;

  CodePageData({this.title, this.subtitle, this.code});
}

var content = CodePageData(
  title: "Main.ino",
  subtitle:
      "The PIR Sensors will calibrate for 15 seconds after powering up the Arduino. It is recommended that you leave the room during this process so that the sensors get a true image of the room without any motion.",
  code: '''/*************************************************
*** The Motion Following Motorized Camera Base ***
***               by Lindsay Fox               ***
*************************************************/

// Servor motor
#include <Servo.h>
Servo camServo; // name the servo motor controlling the camera base
int currentPIRposition = 0; // set current angle of servo

// LED status lights
int LEDpin[] = {9,10,11,12,13}; // LED pin numbers
int currentLEDpin = 9; // the current LED pin; begin with the first in the sequence above

// PIR sensors
int PIRpin[] = {2,3,4,5,6}; // PIR pin numbers
int currentPIRpin = 2; // the current PIR pin; begin with the first in the sequence above
int PIRprevState[] = {1,1,1,1,1}; // the previous state of the PIR (0 = LOW, 1 = HIGH)
int PIRposition[] = {157,117.75,78.5,39.25,0}; // assign angles for servo motor (0-157 distributed equally between 5 PIR sensors)
boolean PIRstatus; // Set status of PIR sensor as either true or false



///// SETUP //////////////////////////////////////
void setup()  {
  
  Serial.begin(9600);
  camServo.attach(7); // assign servo pin
  
  for (int p = 0; p < 5; p++)  { // set all PIR sensors as INPUTS
  pinMode(PIRpin[p], INPUT);
    } // end 'p' for
    
  for (int l = 0; l < 5; l++)  { // set all LEDs as OUTPUTS
  pinMode(LEDpin[l], OUTPUT);
    } // end 'l' for
  
  /////// CALIBRATE PIR SENSORS ///////
  Serial.print("Calibrating PIR Sensors ");
    for(int c = 0; c < 15; c++){ // calibrate PIR sensors for 15 seconds (change from 10-60 sec depending on your sensors)
      Serial.print(".");
      delay(1000); // wait 1 second
      } // end calibration for
    Serial.println("PIR Sensors Ready");
  
  camServo.write(78.5); // move the servo to the center position to begin
  
  } // end setup



///// MAIN LOOP //////////////////////////////////
void loop()  {
  
  for (int PIR = 0; PIR < 5; PIR++) { // start this loop for each PIR sensor
    currentPIRpin = PIRpin[PIR]; // set current PIR pin to current number in 'for' loop
    currentLEDpin=LEDpin[PIR]; // set current LED pin to current number in 'for' loop
    PIRstatus = digitalRead(currentPIRpin);
    
    if (PIRstatus == HIGH) { // if motion is detected on current PIR sensor
      digitalWrite(currentLEDpin, HIGH); // turn corresponding LED on
      if(PIRprevState[PIR] == 0) { // if PIR sensor's previous state is LOW
        if (currentPIRposition != currentPIRpin && PIRprevState[PIR] == 0) { // if high PIR is different than current position PIR then move to new position
          camServo.write(PIRposition[PIR]);
          Serial.print("Current angle : ");
          Serial.println(PIRposition[PIR]);
          delay(50);
          currentPIRposition = currentPIRpin; // reset current PIR position to active [PIR] pin
          PIRprevState[PIR] = 1; // set previous PIR state to HIGH
          }
        PIRprevState[PIR] = 1; // set previous PIR state to HIGH if the current position is the same as the current PIR pin
        } // end PIRprevState if  
      } // end PIRstatus if
    
    else  { //
      digitalWrite(currentLEDpin, LOW);  //the led visualizes the sensors output pin state
      PIRprevState[PIR] = 0;   // set previous PIR state to LOW
      } // end else
      
    } // end [PIR] for loop
  } // end main loop''',
);
