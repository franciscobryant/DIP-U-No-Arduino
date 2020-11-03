import 'package:flutter/material.dart';
import 'package:onlinelearning/MainPage.dart';

class Hardware_Tutorial1_Page4 extends StatefulWidget {
  @override
  _Hardware_Tutorial1_Page4State createState() =>
      _Hardware_Tutorial1_Page4State();
}

class _Hardware_Tutorial1_Page4State extends State<Hardware_Tutorial1_Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffba68c8),
        title: Text("Hardware Tutorial 1 (Page 4)"),
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
      body: Container(
          child: Row(children: [
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 300.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/Hardware_T1P2.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
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
                              title: new Text("Power USB"),
                              content: Text(
                                  "Arduino Borad can be powered by using the USB cable from your computer. All you need to do is connect the USB cable tot he USB connection(1)"),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('1'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Power(Barrel Jack)"),
                              content: Text(
                                  "Arduino boards can be powered directly from AC mains power supply by connecting it to the Barrel Jack(2)"),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('2'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Voltage Regulator"),
                              content: Text(
                                  "The function of the voltage regulator is to control the voltage given to the Arduino board and stabilize the DC voltages used by the processor and other elements"),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('3'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Crystal Oscillator"),
                              content: Text(
                                  "The crystal oscillator helps Arduino in the dealing with time issues. How does Arduino calculate time? The answer is, by using the crystal oscillator. The number printed on top pf the Arduino crytal is 16.000H9H. It tells us that the frequency is 16000000 Hertz or 16Mhz"),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('4'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Arduino Reset"),
                              content: Text(
                                  "You can reset your Arduino board,i.e.,start your program from the beginning.You can reset the UNO board in two ways. First, by using the reset button(17) on the board.Second,youcan connect an external reset button to the Arduino pin labelled RESET(5)"),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('5'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Pins 3.3V"),
                              content: Text(
                                  "3.3V(6)-Supply 3.3 output volt. Most of the components used with Arduino board works fine with 3.3 volt and 5 volt."),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('6'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Pins 5V"),
                              content: Text(
                                  "5V(7)-Supply 5 output volt. Most of the components used with Arduino board works fine with 3.3 volt and 5 volt."),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('7'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Pins GND"),
                              content: Text(
                                  "GND(8)(Ground)-There are several GND pins on the Arduino,any of which can be used to ground your circuit."),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('8'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Pins Vin"),
                              content: Text(
                                  "Vin(9)-This pin also can be used to power the Arduino board from an external power source, like AC mains power supply"),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('9'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Analog pins"),
                              content: Text(
                                  "The Arduino UNO board has six analog input pins A0 through A5.These pins can read the signal from an analog sensor like the humidity sensor or temperature sensor and convert it into a digital value that can be read by the microprocessor."),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('10'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Main microcontroller"),
                              content: Text(
                                  'Each Arduino board has its own microcontroller(11). you can assume it as the brain of your board.The main IC(integrated circuit)on the Arduino is slightly different from board to board.The microcontroller are usually of the ATMEL company.You must know what IC your boardhas before loading up a new program from the Arduino IDE. '
                                  'This information is available on the top of the IC. For more details about the IC construction and function, you can refer to the datasheet.'),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('11'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("ICSP Pin"),
                              content: Text(
                                  'Mostly, ICSP(12) is an AVR,a tiny programming header of the Arduino consisting of MOSI,MISO,SCK,RESET,VCC,and GND.'
                                  'It is opten referrred to as an SPI(Serial Peripheral Interface), which could be considered as an "expansion" of the output.'
                                  'Actually, you are slaving the output device to the master of the SPI bus. '),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('12'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Power LED indicator"),
                              content: Text(
                                  'This LED should light up when you plug your Arduino into a power source to indicate that your board is powered up correctly. If this light does not turn on, then there is something wrong with the connection'),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('13'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("TX and RX LEDs"),
                              content: Text(
                                  'On your board, you will find two labels:TX(transmit) and RX(receive).They appear in two places on the Arduino UNO board.First at the digital 0 and 1, to indicate the pins responsible for serial communication. '
                                  'Second, the TX and RX led(13). The TX led flashes with different speed while sending the serial data.The speed of flashing depends on the baud rate used by the board.RX flashes during the receiving process.'),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('14'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Digital I/O"),
                              content: Text(
                                  'The Arduino UNO board has 14 digital I/O pins(15) of which 6 provide PWM(Pulse Width Modulation) output. These pins can be configured to work as input digital pins to logic values(0 to 1) or as digital output pins to drive different modules like LEDs, relay etc.The pins labeled"~"can be used to generate PWM'),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('15'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("AREF"),
                              content: Text(
                                  'AREF stands forAnalog Reference. It is sometimes, used to set an external reference voltage(between 0 and 5 vols) as the upper limit for the analog input pins.'),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('16'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: new Text("Arduino Reset"),
                              content: Text(
                                  'You can reset your Arduino board,i.e.,start your program from the beginning.You can reset the UNO board in two ways. First, by using the reset button(17) on the board.Second,youcan connect an external reset button to the Arduino pin labelled RESET(5)'),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('17'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ])
            ],
          ),
        ))
      ])),
      floatingActionButton: FloatingActionButton(
        child: const Text('Next'),
        onPressed: () {
          navigateToSubPage(context);
        },
      ),
    );
  }
}

Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
}
