import 'package:flutter/material.dart';
import 'package:onlinelearning/colors/light_color.dart';
import 'package:onlinelearning/AppendixPage.dart';

class IoT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ioT(),
      routes: {
        '/appendixPage': (context) => AppendixPage(),
      },
    );
  }
}

class ioT extends StatefulWidget {
  @override
  _ioTState createState() => _ioTState();
}

class _ioTState extends State<ioT> {
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
                          'Internet of Things\n           (IoT)',
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
                      'Make connected devices easily with one of these IoT products and open your creativity with the opportunities of the world wide web.\n',
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
                                  'OVERVIEW:\nThe Arduino MKR WiFi 1010 is the easiest point of entry to basic IoT and pico-network application design. Whether you are looking at building a sensor network connected to your office or home router, or if you want to create a BLE device sending data to a cellphone, the MKR WiFi 1010 is your one-stop-solution for many of the basic IoT application scenarios.\n\nBATTERY POWER:\nIts USB port can be used to supply power (5V) to the board. It has a Li-Po charging circuit that allows the Arduino MKR WiFi 1010 to run on battery power or an external 5 volt source, charging the Li-Po battery while running on external power. Switching from one source to the other is done automatically.',
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
                                  "assets/image/WIFI_1010_2.jpg",
                                  width: 140,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'ARDUINO MKR\nWIFI 1010',
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
                                  'OVERVIEW:\nAre you developing a project for an environment where wireless connections are unavailable or would be inefficient? The MKR ETH shield allows to have a wired Ethernet connection between your MKR board and your network or the Internet. This is particularly useful for devices located where either electromagnetic noise is a problem or there are special safety requirements.\n\nTECH SPEC:\nConnectivity: Ethernet\nConnector: RJ45 Female\nSPI SD Card Slot: Yes\nCircuit Operating Voltage: 3.3 V\nCompatibility: MKR boards',
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
                                  "assets/image/ETH_ SHIELD.jpg",
                                  width: 142,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "ARDUINO MKR\nETH SHIELD",
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
                                  'OVERVIEW:\nThe Arduino UNO WiFi Rev.2 is the easiest point of entry to basic IoT with the standard form factor of the UNO family. Whether you are looking at building a sensor network connected to your office or home router, or if you want to create a BLE device sending data to a cellphone, the Arduino UNO WiFi Rev.2 is your one-stop-solution for many of the basic IoT application scenarios.\n\nTECH SPEC:\nMicrocontroller: ATmega32u4\nMicrocontroller: ATmega4809\nOperating Voltage: 5V\nInput Voltage: 7-12V\nDigital I/O Pins:14 — 5 Provide PWM Output\nAnalog Input Pins: 6\nClock Speed: 16 MHz\nLED_BUILTIN: 25',
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
                                  "assets/image/WIFI_REV2.jpg",
                                  width: 142,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "ARDUINO UNO\nWIFI REV2",
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
                                  'OVERVIEW:\nThe Arduino Nano 33 IoT is the easiest and cheapest point of entry to enhance existing devices (and creating new ones) to be part of the IoT and designing pico-network applications. Whether you are looking at building a sensor network connected to your office or home router, or if you want to create a BLE device sending data to a cellphone, the Nano 33 IoT is your one-stop-solution for many of the basic IoT application scenarios.\n\nTECH SPEC:\nMicrocontroller: SAMD21 Cortex®-M0+ 32bit low power ARM MCU\nOperating Voltage: 3.3V\nInput Voltage (limit): 21V\nDigital I/O Pins: 14\nPWM Pins: 11 (2, 3, 5, 6, 9, 10, 11, 12, 16 / A2, 17 / A3, 19 / A5)\nAnalog Input Pins: 8 (ADC 8/10/12 bit)\nAnalog Output Pins: 1 (DAC 10 bit)\nClock Speed: 48 MHz\nLED_BUILTIN: 13\nCPU Flash Memory: 256KB\nSRAM: 32KB',
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
                                  "assets/image/NANO_33_IOT.jpg",
                                  width: 142,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "ARDUINO\nNANO 33 IOT",
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
