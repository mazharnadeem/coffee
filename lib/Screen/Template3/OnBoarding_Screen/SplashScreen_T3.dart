import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_template_null_safety/Screen/Template2/Bottom_Nav_Bar/BottomNavigationBar.dart';
import 'package:food_template_null_safety/Screen/Template2/Intro/OnBoarding_T2.dart';
import 'package:food_template_null_safety/Screen/Template3/Home_Screen/Home_ScreenT3.dart';

/// Component UI
class SplashScreenT3 extends StatefulWidget {
  @override
  _SplashScreenT3State createState() => _SplashScreenT3State();
}

/// Component UI
class _SplashScreenT3State extends State<SplashScreenT3> {
  @override

  /// Setting duration in splash screen
  startTime() async {
    return new Timer(Duration(milliseconds: 4500), NavigatorPage);
  }

  /// To navigate layout change
  void NavigatorPage() {
    Navigator.of(context).pushReplacement(
        PageRouteBuilder(pageBuilder: (_, __, ___) => HomePageT3()));
  }

  /// Declare startTime to InitState
  @override
  void initState() {
    super.initState();
    startTime();
  }

  /// Code Create UI Splash Screen
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: _height,

        /// Set Background image in splash screen layout (Click to open code)
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Template3/image/splashscreen.png'),
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
                        color: Colors.black87,
                        fontSize: 54.0),
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
