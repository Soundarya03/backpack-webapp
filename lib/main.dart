import 'package:flutter/material.dart';
import 'package:flutter_web_trials/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: GoogleFonts.ralewayTextTheme(
            Theme.of(context).textTheme,
          )),
      home: Material(child: LandingPage()),
    );
  }
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var mediumFont = MediaQuery.of(context).size.height * 0.038;
    var isNew = false;

    return Container(
      height: MediaQuery.of(context).size.height,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.height,
            color: Color(0xfff9d290),
            padding: EdgeInsets.all(100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/backpack_logo.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "For all things school",
                  style: GoogleFonts.raleway(
                    fontSize: mediumFont * 0.7,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xfff6ba40),
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(50),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: LoginWidget(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
