import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  var choice = 1;

  @override
  Widget build(BuildContext context) {
    var mediumFont = MediaQuery.of(context).size.height * 0.038;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          (choice == 2 ? "Teacher" : "Student") + " Login",
          style: GoogleFonts.fredokaOne(
            fontSize: mediumFont * 1.7,
            color: Color(0xff0c2461),
          ),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: choice == 2 ? 'Your Username' : 'Your Admission Number',
            isDense: true,
            focusColor: Color(0xff0c2461),
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
            isDense: true,
            focusColor: Color(0xff0c2461),
            hoverColor: Color(0xff0c2461),
          ),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.fromLTRB(35, 15, 35, 15)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff2fc7b5)),
            ),
            onPressed: () => {},
            child: Text(
              'Login',
              style: TextStyle(
                color: Color(0xff0c2461),
                fontSize: mediumFont * 0.8,
              ),
            )),
        TextButton(
            onPressed: () => {},
            child: Text(
              'I\'ve forgotten my password',
              style: TextStyle(
                color: Color(0xff0c2461),
                fontSize: mediumFont * 0.5,
              ),
            )),
        SizedBox(
          height: height * 0.15,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            'I\'m a',
            style: TextStyle(
              fontSize: mediumFont * 0.7,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () => {
                setState(() {
                  choice = 1;
                })
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    choice == 1 ? Color(0xff2fc7b5) : Colors.transparent),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.fromLTRB(25, 10, 25, 10)),
                side: MaterialStateProperty.all<BorderSide>(BorderSide(
                  color: Color(0xff2fc7b5),
                  width: 2,
                )),
              ),
              child: Text(
                'Student',
                style: TextStyle(
                  color: Color(0xff0c2461),
                  fontSize: mediumFont * 0.7,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.005,
            ),
            OutlinedButton(
              onPressed: () => {
                setState(() {
                  choice = 2;
                })
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    choice == 2 ? Color(0xff2fc7b5) : Colors.transparent),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.fromLTRB(25, 10, 25, 10)),
                side: MaterialStateProperty.all<BorderSide>(BorderSide(
                  color: Color(0xff2fc7b5),
                  width: 2,
                )),
              ),
              child: Text(
                'Teacher',
                style: TextStyle(
                  color: Color(0xff0c2461),
                  fontSize: mediumFont * 0.7,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.005,
            ),
            OutlinedButton(
              onPressed: () => {
                setState(() {
                  choice = 3;
                })
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    choice == 3 ? Color(0xff2fc7b5) : Colors.transparent),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.fromLTRB(25, 10, 25, 10)),
                side: MaterialStateProperty.all<BorderSide>(BorderSide(
                  color: Color(0xff2fc7b5),
                  width: 2,
                )),
              ),
              child: Text(
                'Admin',
                style: TextStyle(
                  color: Color(0xff0c2461),
                  fontSize: mediumFont * 0.7,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
