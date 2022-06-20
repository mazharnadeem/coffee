import 'package:flutter/material.dart';

import 'loginEmail.dart';

class ChosseLoginT2 extends StatefulWidget {
  ChosseLoginT2({Key? key}) : super(key: key);

  _ChosseLoginT2State createState() => _ChosseLoginT2State();
}

class _ChosseLoginT2State extends State<ChosseLoginT2> {
  var _txtStyle = TextStyle(
      fontFamily: "Sofia",
      fontWeight: FontWeight.w600,
      color: Colors.black54,
      fontSize: 13.0);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: _height,

        /// Set Background image in splash screen layout (Click to open code)
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Template2/choseLoginBackground.png'),
                fit: BoxFit.cover)),
        child: Container(
          /// Set gradient black in image splash screen (Click to open code)

          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 120.0),
                  ),
                  Text(
                    "Foodie",
                    style: TextStyle(
                        fontFamily: "Lemon",
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFAC81),
                        fontSize: 54.0),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 2.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 45.0,
                        width: _width / 2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45.withOpacity(0.15),
                                blurRadius: 19.0,
                                spreadRadius: 2.0)
                          ],
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Image.asset(
                                  "assets/Template2/facebook.png",
                                  height: 25.0,
                                  width: 25.0,
                                ),
                              ),
                              Text(
                                "Facebook",
                                style: _txtStyle,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Container(
                        height: 45.0,
                        width: _width / 2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45.withOpacity(0.15),
                                blurRadius: 19.0,
                                spreadRadius: 2.0)
                          ],
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Image.asset(
                                  "assets/Template2/google.png",
                                  height: 30.0,
                                  width: 30.0,
                                ),
                              ),
                              Text(
                                "Google",
                                style: _txtStyle,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new LoginScreenT2()));
                    },
                    child: Container(
                      height: 48.0,
                      width: _width / 1.2,
                      decoration: BoxDecoration(
                        color: Color(0xFFF88421),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black45.withOpacity(0.15),
                              blurRadius: 19.0,
                              spreadRadius: 2.0)
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Log in with E-mail",
                          style: _txtStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
