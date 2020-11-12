import 'package:flutter/material.dart';
import 'package:onlinelearning/colors/light_color.dart';
import 'package:google_fonts/google_fonts.dart';

class CodePage extends StatefulWidget {
  @override
  _CodePageState createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  String chosenTitle;
  String chosenSubtitle;
  String chosenCode;

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    chosenTitle = arguments['title'];
    chosenSubtitle = arguments['subtitle'];
    chosenCode = arguments['code'];
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
          left: 30,
          right: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 0),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Code',
                          style: TextStyle(
                            color: LightColor.titleTextColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(11),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border(
                            top: BorderSide(),
                            left: BorderSide(),
                            right: BorderSide(),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "$chosenTitle",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[800],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "$chosenSubtitle",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.46,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(15),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            child: Text(
                              '''$chosenCode''',
                              style: GoogleFonts.sourceCodePro(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, left: 20, right: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.only(
                                left: 10, top: 20, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10,
                                      color:
                                          LightColor.lightpurple.withAlpha(70))
                                ],
                                color: LightColor.darkpurple,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.content_copy,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.only(
                                left: 10, top: 20, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10,
                                      color:
                                          LightColor.lightpurple.withAlpha(70))
                                ],
                                color: LightColor.darkpurple,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.file_download,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
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

  void openPianoCode() {
    Navigator.pushNamed(context, '/pianoCode');
  }
}
