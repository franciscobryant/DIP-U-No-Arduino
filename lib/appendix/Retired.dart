import 'package:flutter/material.dart';
import 'package:onlinelearning/colors/light_color.dart';
import 'package:onlinelearning/AppendixPage.dart';

class Retired extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: retired(),
      routes: {
        '/appendixPage': (context) => AppendixPage(),
      },
    );
  }
}

class retired extends StatefulWidget {
  @override
  _retiredState createState() => _retiredState();
}

class _retiredState extends State<retired> {
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
                          'Retired',
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
                      'Explore the history of Arduino with a journey through all the boards, accessories, shield, kits and documentation released since 2006.\n',
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
                                  'OVERVIEW:\nThe LilyPad Arduino is designed for e-textiles and wearables projects. It can be sewn to fabric and similarly mounted power supplies, sensors and actuators with conductive thread.\n\nThe LilyPad Arduino Main Board is based on the ATmega168V (the low-power version of the ATmega168) or the ATmega328V. The LilyPad Arduino was designed and developed by Leah Buechley and SparkFun Electronics.\n\nTECH SPEC:\nMicrocontroller: ATmega168 or ATmega328V\nOperating Voltage: 2.7-5.5 V\nInput Voltage: 2.7-5.5 V\nDigital I/O Pins: 14\nPWM Channels: 6\nAnalog Input Channels: 6\nClock Speed: 8 MHz',
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
                                  "assets/image/LILYPAD_MAIN.jpg",
                                  width: 140,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'LILYPAD\nARDUINO\nMAIN BOARD',
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
                                  'OVERVIEW:\n\nArduino YÚN is the perfect board to use when designing connected devices and, more in general, Internet of Things projects. It combines the power of Linux with the ease of use of Arduino.\n\nThe Arduino Yún is a microcontroller board based on the ATmega32u4 and the Atheros AR9331. The Atheros processor supports a Linux distribution based on OpenWrt named Linino OS. The board has built-in Ethernet and WiFi support, a USB-A port, micro-SD card slot, 20 digital input/output pins (7 of them can be used as PWM outputs and 12 as analog inputs), a 16 MHz crystal oscillator, a micro USB connection, an ICSP header, and 3 reset buttons.\n',
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
                                  "assets/image/ARDUINO_YUN.jpg",
                                  width: 142,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "ARDUINO YÚN",
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
                                  'OVERVIEW:\nThe Arduino Mega ADK has the same features as the Arduino Mega board but it is specially designed to work with Android.\n\nThe Arduino MEGA ADK is a microcontroller board based on the ATmega2560. It has a USB host interface to connect with Android based phones, based on the MAX3421e IC. It has 54 digital input/output pins (of which 15 can be used as PWM outputs), 16 analog inputs, 4 UARTs(hardware serial ports), a 16 MHz crystal oscillator, a USB connection, a power jack, an ICSP header, and a reset button. The MEGA ADK is based on the Mega 2560.\n\nTECH SPEC:\nMicrocontroller: ATmega2560\nOperating Voltage: 5V\nInput Voltage: 7-12V\nInput Voltage (limits)	6-20V\nDigital I/O Pins: 54 (of which 15 provide PWM output)\nAnalog Input Pins: 16\nClock Speed: 16 MHz\nFlash Memory: 256 KB of which 8 KB used by bootloader\nSRAM: 8 KB',
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
                                  "assets/image/ARDUINO_MEGA_ADK_REV3.jpg",
                                  width: 142,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "ARDUINO MEGA\n     ADK REV3",
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
                                  'OVERVIEW:\n\nThe Arduino TFT screen is a backlit LCD screen with headers. You can draw text, images, and shapes to the screen with the TFT library. There is an onboard micro-SD card slot on the back of the screen that can, among other things, store bitmap images for the screen to display. The screen headers are designed to fit into the socket on the front of the Arduino Esplora, but it is compatible with any AVR-based Arduino (Uno, Leonardo, etc) or with the Arduino Due.',
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
                                  "assets/image/ARDUINO_LCD_SCREEN.jpg",
                                  width: 142,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "ARDUINO LCD\n     SCREEN",
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
