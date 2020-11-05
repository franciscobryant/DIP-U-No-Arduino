import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
                height: 13,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/image/profilePic.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Text(
                  "John Orange",
                  style: TextStyle(
                      color: Colors.blueGrey[800],
                      fontSize: 18.0,
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
                height: 15,
              ),
              Container(
                height: 200.0,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image:
                        AssetImage("assets/image/U-No-Arduino Certificate.JPG"),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              _progress(context, "Overall", "", 40, 13),
              _progress(
                  context, "Basic", "assets/image/basic_badges.png", 10, 10),
              _progress(context, "Intermediate",
                  "assets/image/intemediate_badges.png", 10, 3),
              _progress(context, "Advanced", "assets/image/advanced_badges.png",
                  10, 0),
            ],
          ),
        ),
      ),
    );
  }

  _progress(BuildContext context, var name, String path, var max, var value) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 5.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Text(name,
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(path,
                      width: 40.0, height: path.isEmpty ? 0.0 : 40.0),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text("$value / $max",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 5.0),
          width: double.maxFinite,
          height: 25.0,
          child: LinearPercentIndicator(
            lineHeight: 25.0,
            percent: (value / max),
            progressColor: Colors.blue,
          ),
        ),
      ],
    );
  }
}
