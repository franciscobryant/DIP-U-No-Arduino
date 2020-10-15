import 'package:flutter/material.dart';
import 'package:onlinelearning/projects/MotionTracking.dart';

class MotionComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: motionComponents(),
      routes: {
        '/motionTracking': (context) => MotionTracking(),
      },
    );
  }
}

class motionComponents extends StatefulWidget {
  @override
  _motionComponentsState createState() => _motionComponentsState();
}

class _motionComponentsState extends State<motionComponents> {
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

  void openMotionTracking() {
    Navigator.pushNamed(context, '/motionTracking');
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
      name: "PIR Motion Sensor",
      quantity: "5",
      image: "assets/image/PIR Motion sensor.jpg"),
  Component(
      name: "Servos MG996R",
      quantity: "1",
      image: "assets/image/Servo MG996R(tower pro).jpg"),
  Component(
      name: "Resistor 220Ω",
      quantity: "5",
      image: "assets/image/resistor code.JPG"),
  Component(name: "LED", quantity: "5", image: "assets/image/LED.JPG"),
  Component(
      name: "Wires / Jumper Cables",
      quantity: "1",
      image: "assets/image/cables.JPG"),
  Component(
      name: "Acrylic / Cutbroad Box",
      quantity: "1",
      image: "assets/image/Alcrylic-cutboard box.jpg"),
  Component(
      name: "Breadboard / PCB Board",
      quantity: "1",
      image: "assets/image/breadboard and PCB.JPG"),
  Component(
      name: "Soldering Kit (optional)",
      quantity: "1",
      image: "assets/image/soldering kit.JPG"),
];
