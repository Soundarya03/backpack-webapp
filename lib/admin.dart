import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class AdminPortal extends StatefulWidget {
  @override
  _AdminPortalState createState() => _AdminPortalState();
}

class _AdminPortalState extends State<AdminPortal> {
  String op = '';

  Future<void> makeRequest() async {
    final response = await http.get('http://localhost:3000/enrollstudent');
    setState(() {
      op = response.toString() + " DONE SUCCESSFULLY";
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var mediumFont = size.height * 0.038;

    return Scaffold(
      body: Container(
        height: size.height * 0.75,
        width: size.width * 0.6,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0.97, -0.97),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'x',
                  style: GoogleFonts.fredokaOne(
                      fontSize: mediumFont * 1.1, color: Colors.black),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.fromLTRB(0, 15, 0, 20)),
                  side: MaterialStateProperty.all<BorderSide>(BorderSide(
                    color: Colors.red[700],
                    width: 2,
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Enter secret key provided to your institution',
                      style: GoogleFonts.fredokaOne(
                        fontSize: mediumFont,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Secret Key',
                        isDense: true,
                        focusColor: Color(0xff0c2461),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    TextButton(
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.fromLTRB(35, 15, 35, 15)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff2fc7b5)),
                        ),
                        onPressed: () async => {makeRequest()},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xff0c2461),
                            fontSize: mediumFont * 0.8,
                          ),
                        )),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      op,
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
}
