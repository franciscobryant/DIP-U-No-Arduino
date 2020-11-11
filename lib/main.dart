import 'package:flutter/material.dart';
import 'MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Avenir'),
      home: MyHomePage(),
      routes: {
        '/mainPage': (context) => MainPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Start learning",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        height: 1),
                  ),
                ),
                Container(
                  child: Text(
                    "The basics of Arduino",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        height: 1),
                  ),
                ),
                Container(
                  child: Text(
                    "With U-No-Arduino!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        height: 1),
                  ),
                ),
                Container(
                  child: Text(
                    "Now,",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        height: 1),
                  ),
                ),
                Container(
                  child: Text(
                    "You know Arduino!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        height: 1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/U-No-Arduino Logo.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 50),
            child: Center(
              child: InkWell(
                onTap: () {
                  openMainPage();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void openMainPage() {
    Navigator.pushNamed(context, '/mainPage');
  }
}
