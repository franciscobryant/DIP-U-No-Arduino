import 'package:flutter/material.dart';
import 'package:onlinelearning/advancedtutorial/Advance_tutorial1_Page1.dart';
import 'package:onlinelearning/advancedtutorial/Advance_tutorial2_Page1.dart';
import 'package:onlinelearning/advancedtutorial/Advance_tutorial3_Page1.dart';
import 'package:onlinelearning/advancedtutorial/Advance_tutorial4_Page1.dart';
import 'package:onlinelearning/basictutorial/Hardware_Tutorial1_Page1.dart';
import 'package:onlinelearning/basictutorial/Hardware_Tutorial2_Page1.dart';
import 'package:onlinelearning/basictutorial/Software_Tutorial1_Page1.dart';
import 'package:onlinelearning/basictutorial/Software_Tutorial2_Page1.dart';
import 'package:onlinelearning/intermediatetutorial/Intermediate_tutorial1_Page1.dart';
import 'package:onlinelearning/intermediatetutorial/Intermediate_tutorial2_Page1.dart';
import 'package:onlinelearning/intermediatetutorial/Intermediate_tutorial3_Page1.dart';
import 'package:onlinelearning/intermediatetutorial/Intermediate_tutorial4_Page1.dart';

class CoursePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  String chosenImg;
  String chosenTitle;
  String courseTitle1;
  String courseTitle2;
  String courseTitle3;
  String courseTitle4;
  String courseSubtitle1;
  String courseSubtitle2;
  String courseSubtitle3;
  String courseSubtitle4;
  String pageName1;
  String pageName2;
  String pageName3;
  String pageName4;
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    chosenImg = arguments['img'];
    chosenTitle = arguments['title'];
    courseTitle1 = arguments['courseTitle1'];
    courseTitle2 = arguments['courseTitle2'];
    courseTitle3 = arguments['courseTitle3'];
    courseTitle4 = arguments['courseTitle4'];
    courseSubtitle1 = arguments['courseSubtitle1'];
    courseSubtitle2 = arguments['courseSubtitle2'];
    courseSubtitle3 = arguments['courseSubtitle3'];
    courseSubtitle4 = arguments['courseSubtitle4'];
    pageName1 = arguments['pageName1'];
    pageName2 = arguments['pageName2'];
    pageName3 = arguments['pageName3'];
    pageName4 = arguments['pageName4'];

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
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xffe1eaff),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xff2657ce),
                            ),
                          ),
                        ),
                        Text(
                          '$chosenTitle',
                          style: TextStyle(
                            color: Color(0xff2657ce),
                            fontSize: 27,
                          ),
                        ),
                        Text(
                          'Getting started',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Color(0xffff5954),
                          ),
                          child: Hero(
                            tag: '$chosenImg',
                            child: Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/image/$chosenImg.png'),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Course',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: Color(0xffd3defa),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 35,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.timer,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "3 Hours",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.7)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: <Widget>[
                            productListing('$courseTitle1', '$courseSubtitle1',
                                'active', '$pageName1'),
                            productListing('$courseTitle2', '$courseSubtitle2',
                                'inactive', '$pageName2'),
                            productListing('$courseTitle3', '$courseSubtitle3',
                                'inactive', '$pageName3'),
                            productListing('$courseTitle4', '$courseSubtitle4',
                                'inactive', '$pageName4')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }

  Column productListing(
      String title, String info, String activeOrInactive, String pageName) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: (activeOrInactive == 'active')
                    ? Color(0xff2657ce)
                    : Color(0xffd3defa),
                borderRadius: BorderRadius.all(Radius.circular(17)),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.play_arrow,
                  color: (activeOrInactive == 'active')
                      ? Colors.white
                      : Color(0xff2657ce),
                ),
                onPressed: () {
                  navigateToSubPage(context, "$pageName");
                },
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$title',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  '$info',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                )
              ],
            )
          ],
        ),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width * 0.85,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

Future navigateToSubPage(context, String page) async {
  switch (page) {
    case "Hardware1":
      {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Hardware_Tutorial1_Page_1()));
      }
      break;
    case "Hardware2":
      {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Hardware_Tutorial2_Page_1()));
      }
      break;
    case "Software1":
      {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Software_Tutorial1_Page_1()));
      }
      break;
    case "Software2":
      {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Software_Tutorial2_Page_1()));
      }
      break;
    case "Intermediate1":
      {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Intermediate_Tutorial1_Page_1(),
            ));
      }
      break;
    case "Intermediate2":
      {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Intermediate_Tutorial2_Page_1(),
            ));
      }
      break;
    case "Intermediate3":
      {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Intermediate_Tutorial3_Page_1(),
            ));
      }
      break;
    case "Intermediate4":
      {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Intermediate_Tutorial4_Page_1(),
            ));
      }
      break;
    case "Advanced1":
      {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Advance_Tutorial1_Page_1(),
            ));
      }
      break;
    case "Advanced2":
      {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Advance_Tutorial2_Page_1(),
            ));
      }
      break;
    case "Advanced3":
      {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Advance_Tutorial3_Page_1(),
            ));
      }
      break;
    case "Advanced4":
      {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Advance_Tutorial4_Page_1(),
            ));
      }
      break;
    default:
      {
        print("Invalid choice");
      }
      break;
  }
}
