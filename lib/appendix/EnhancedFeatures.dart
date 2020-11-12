import 'package:flutter/material.dart';
import 'package:onlinelearning/colors/light_color.dart';
import 'package:onlinelearning/AppendixPage.dart';

class EnhancedFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: enhancedFeatures(),
      routes: {
        '/appendixPage': (context) => AppendixPage(),
      },
    );
  }
}

class enhancedFeatures extends StatefulWidget {
  @override
  _enhancedFeaturesState createState() => _enhancedFeaturesState();
}

class _enhancedFeaturesState extends State<enhancedFeatures> {
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
                          'Enhanced Features',
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
                      'Experience the excitement of more complex projects choosing one of the boards with advanced functionalities, or faster performances.\n',
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
                                  'OVERVIEW:\nThe Arduino Due is the first Arduino board based on a 32-bit ARM core microcontroller. With 54 digital input/output pins, 12 analog inputs, 2 DAC and 2 CAN it is the perfect board for powerful larger scale Arduino projects.\n\nWarning: Unlike most Arduino boards, the Arduino Due board runs at 3.3V. The maximum voltage that the I/O pins can tolerate is 3.3V. Applying voltages higher than 3.3V to any I/O pin could damage the board.\n\nTECH SPEC:\nMicrocontroller: AT91SAM3X8E\nOperating Voltage: 3.3V\nInput Voltage (recommended): 7-12V\nInput Voltage (limits): 6-16V\nDigital I/O Pins: 54 (of which 12 provide PWM output)\nAnalog Input Pins: 12\nAnalog Output Pins: 2 (DAC)\nClock Speed: 84 MHz\nFlash Memory	: 512 KB all available for the user applications\nSRAM:96 KB (two banks: 64KB and 32KB)',
                                  style: TextStyle(
                                    color: Colors.indigo,
                                  ),
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
                                  "assets/image/ARDUINO_DUE.jpg",
                                  width: 140,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'ARDUINO DUE',
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
                                  'OVERVIEW:\n The Arduino 4 Relays Shield allows your Arduino driving high power loads.\n\nThe Arduino 4 Relays Shield is a solution for driving high power loads that cannot be controlled by Arduino digital IOs, due to the current and voltage limits of the controller. The Shield features four relays, each relay provides 2 pole changeover contacts (NO and NC); in order to increase the current limit of each output the 2 changeover contacts have been put in parallel. Four LEDs indicate the on/off state of each relay..\n\nTECH SPEC:\nOperating Voltage: 5 V\nCurrent needs:140 mA (with all releays on, about 35 mA each)\nInterfaces with Arduino Board: DIO\nRelays: 4 (60W)',
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
                                  "assets/image/ARDUINO_4_RELAYS_SHIELD.jpg",
                                  width: 142,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "    ARDUINO 4\nRELAYS SHIELD",
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
                                  'OVERVIEW:\nThe Arduino Ethernet Shield 2 connects your Arduino to the internet.\n\nThe Arduino Ethernet Shield 2 connects your Arduino to the internet in mere minutes. Just plug this module onto your Arduino Board, connect it to your network with an RJ45 cable (not included) and follow a few simple steps to start controlling your world through the internet.\n\nTECH SPEC:\nOperating Voltage: 5V\nEthernet Controller: W5500 with internal 32K buffer\nConnection speed: 10/100Mb\n',
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
                                  "assets/image/ARDUINO_ETHERNET_SHIELD_2.jpg",
                                  width: 142,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "ARDUINO\nETHERNET\nSHIELD 2",
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
                                  'OVERVIEW:\nThe Arduino Motor Shield allows your arduino to drive DC and stepper motors, relays and solenoids.\n\nThe Arduino Motor Shield is based on the L298 (datasheet), which is a dual full-bridge driver designed to drive inductive loads such as relays, solenoids, DC and stepping motors. It lets you drive two DC motors with your Arduino board, controlling the speed and direction of each one independently. You can also measure the motor current absorption of each motor, among other features.\n\nTECH SPEC:\nOperating Voltage: 5V to 12V\nMotor controller: L298P, Drives 2 DC motors or 1 stepper motor\nMax current: 2A per channel or 4A max (with external power supply)\nCurrent sensing: 1.65V/A',
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
                                  "assets/image/ARDUINO_MOTOR_SHIELD_REV3.jpg",
                                  width: 142,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "      ARDUINO\nMOTOR SHIELD\n         REV3",
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
