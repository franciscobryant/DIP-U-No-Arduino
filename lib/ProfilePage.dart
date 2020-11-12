import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:onlinelearning/colors/light_color.dart';

class ProfilePage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  ProfilePage_State createState() => ProfilePage_State();
}

class ProfilePage_State extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.blue,
        title: Text("Your Profile"),
        leading: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.blue,
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
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/image/john_orange.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 7),
                child: Text(
                  "John Orange",
                  style: TextStyle(
                      color: Colors.blueGrey[800],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  "NTU EEE1",
                  style: TextStyle(
                      color: Colors.blueGrey[800],
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  "Joined 2 Nov 2020",
                  style: TextStyle(
                      color: Colors.blueGrey[800],
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    child: new AlertDialog(
                      content: Text(
                        "Username   : johnorange \nPassword    : Arduino.1",
                        style: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          color: LightColor.lightpurple.withAlpha(30))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Text(
                    "Quiz Credentials",
                    style: TextStyle(
                      color: (Color(0xffe9eefa) == Color(0xffe9eefa)
                          ? Color(0xff2657ce)
                          : Colors.white),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                width: 270,
                height: 200.0,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        color: LightColor.lightpurple.withAlpha(30))
                  ],
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image:
                        AssetImage("assets/image/U-No-Arduino Certificate.JPG"),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              _progress(context, "Overall", 100, 45,
                  "assets/image/Certificate Badge Transparent.png"),
              _progress(context, "Beginner", 100, 100,
                  "assets/image/Beginner Badge Opaque.png"),
              _progress(
                context,
                "Intermediate",
                100,
                40,
                "assets/image/Intermediate Badge Transparent.png",
              ),
              _progress(
                context,
                "Advanced",
                100,
                0,
                "assets/image/Advanced Badge Transparent.png",
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _progress(BuildContext context, var name, var max, var value, String path) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(path),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 30,
              ),
              height: 80,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "$value %",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 25.0,
                    child: LinearPercentIndicator(
                      lineHeight: 25.0,
                      percent: (value / max),
                      progressColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
