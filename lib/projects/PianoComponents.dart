import 'package:flutter/material.dart';
import 'package:onlinelearning/projects/ArduinoPiano.dart';

class PianoComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pianoComponents(),
      routes: {
        '/arduinoPiano': (context) => ArduinoPiano(),
      },
    );
  }
}

class pianoComponents extends StatefulWidget {
  @override
  _pianoComponentsState createState() => _pianoComponentsState();
}

class _pianoComponentsState extends State<pianoComponents> {
  Widget bodyData() => DataTable(
      onSelectAll: (b) {},
      sortColumnIndex: 0,
      sortAscending: true,
      columns: <DataColumn>[
        DataColumn(
          label: Text("Components"),
          numeric: false,
          onSort: (i, b) {
            print("$i $b");
            setState(() {
              components.sort((a, b) => a.name.compareTo(b.name));
            });
          },
          tooltip: "To display the names of the components",
        ),
        DataColumn(
          label: Text("Last Name"),
          numeric: false,
          onSort: (i, b) {
            print("$i $b");
            setState(() {
              components.sort((a, b) => a.quantity.compareTo(b.quantity));
            });
          },
          tooltip: "To display the quantities of each components",
        ),
      ],
      rows: components
          .map(
            (component) => DataRow(
              cells: [
                DataCell(
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        child: new AlertDialog(
                          content: Image.asset(component.image),
                        ),
                      );
                    },
                    child: Text(component.name),
                  ),
                  showEditIcon: false,
                  placeholder: false,
                ),
                DataCell(
                  Text(component.quantity),
                  showEditIcon: false,
                  placeholder: false,
                )
              ],
            ),
          )
          .toList());

  @override
  Widget build(BuildContext context) {
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
                        bodyData(),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    )
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

class Component {
  String name;
  String quantity;
  String image;

  Component({this.name, this.quantity, this.image});
}

var components = <Component>[
  Component(
      name: "Arduino Uno",
      quantity: "1",
      image: "assets/image/Arduino Uno.JPG"),
  Component(
      name: "Standard LCD Screen",
      quantity: "1",
      image: "assets/image/LCD.JPG"),
  Component(
      name: "Push Button switch 12mm​",
      quantity: "8",
      image: "assets/image/push buttons.JPG"),
  Component(
      name: "Resistor 221Ω",
      quantity: "4",
      image: "assets/image/resistor code.JPG"),
  Component(
      name: "Resistor 560Ω",
      quantity: "1",
      image: "assets/image/resistor code.JPG"),
  Component(
      name: "Resistor 1KΩ",
      quantity: "1",
      image: "assets/image/resistor code.JPG"),
  Component(
      name: "Resistor 4.7KΩ",
      quantity: "1",
      image: "assets/image/resistor code.JPG"),
  Component(
      name: "Resistor 10KΩ​",
      quantity: "3",
      image: "assets/image/resistor code.JPG"),
  Component(
      name: "Resistor 1MΩ",
      quantity: "1",
      image: "assets/image/resistor code.JPG"),
  Component(
      name: "Piezzo Buzzer", quantity: "1", image: "assets/image/buzzer.JPG"),
  Component(
      name: "LED (generic)", quantity: "1", image: "assets/image/LED.JPG"),
  Component(
      name: "Potentiometer - 10KΩ",
      quantity: "1",
      image: "assets/image/potentiometer .JPG"),
  Component(
      name: "Wires / Jumper cables",
      quantity: "1",
      image: "assets/image/cables.JPG"),
  Component(
      name: "Breadboard / PCB",
      quantity: "1",
      image: "assets/image/breadboard and PCB.JPG"),
  Component(
      name: "Soldering kit (optional)",
      quantity: "1",
      image: "assets/image/soldering kit.JPG"),
];
