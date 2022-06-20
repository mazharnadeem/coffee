import 'package:flutter/material.dart';

class CallCenter_T1 extends StatefulWidget {
  @override
  _CallCenter_T1State createState() => _CallCenter_T1State();
}

class _CallCenter_T1State extends State<CallCenter_T1> {
  @override
  static var _txtCustomHead = TextStyle(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    fontFamily: "Sofia",
  );

  static var _txtCustomSub = TextStyle(
    color: Colors.white54,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    fontFamily: "Sofia",
  );

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E2026),
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF1E2026),
        title: Text(
          "Call Center",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17.0,
              color: Colors.white,
              fontFamily: "Sofia"),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFFFF975D)),
        elevation: 0.0,
      ),
      body: Container(
          color: Color(0xFF1E2026),
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/icon/notificationIlustration.png",
                height: 210.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Text(
                  "We're Happy to Help You!",
                  style: _txtCustomHead,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, right: 20.0, left: 20.0),
                child: Text(
                  "If you have complain about the \nproduct chat me",
                  style: _txtCustomSub,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      height: 50.0,
                      width: 280.0,
                      decoration: BoxDecoration(
                          color: Color(0xFFFF975D),
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                      child: Center(
                          child: Text(
                        "Chat Me",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0),
                      )),
                    ),
                  ),
                ),
              )
            ],
          ))),
    );
  }
}
