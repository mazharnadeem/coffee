import 'package:flutter/material.dart';

class NotificationScreenT1 extends StatefulWidget {
  NotificationScreenT1({Key? key}) : super(key: key);

  @override
  _NotificationScreenT1State createState() => _NotificationScreenT1State();
}

class _NotificationScreenT1State extends State<NotificationScreenT1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E2026),
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF1E2026),
        title: Text(
          "Notification",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: "Sofia"),
        ),
        iconTheme: IconThemeData(
          color: Color(0xFFFF975D),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        color: Color(0xFF1E2026),
        width: 500.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 120.0)),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Image.asset(
                "assets/icon/callCenterIlustration.png",
                height: 250.0,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20.0)),
            Text(
              "Not Have Notification",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 21.5,
                  color: Colors.white,
                  fontFamily: "Sofia"),
            ),
          ],
        ),
      ),
    );
  }
}
