import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    var mediumFont = MediaQuery.of(context).size.height * 0.038;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Student Login",
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
            hintText: 'Username / Registered e-mail',
            isDense: true,
            focusColor: Color(0xff0c2461),
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        TextFormField(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'New here?',
              style: TextStyle(
                color: Color(0xff0c2461),
                fontSize: mediumFont * 0.7,
              ),
            ),
            SizedBox(
              width: width * 0.005,
            ),
            OutlinedButton(
              onPressed: () => {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.fromLTRB(25, 10, 25, 10)),
                side: MaterialStateProperty.all<BorderSide>(BorderSide(
                  color: Color(0xff2fc7b5),
                  width: 2,
                )),
              ),
              child: Text(
                'Sign Up',
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
