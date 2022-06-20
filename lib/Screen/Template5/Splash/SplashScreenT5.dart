import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_template_null_safety/Screen/Template2/Bottom_Nav_Bar/BottomNavigationBar.dart';
import 'package:food_template_null_safety/Screen/Template2/Intro/OnBoarding_T2.dart';
import 'package:food_template_null_safety/Screen/Template5/HomePage/HomePageT5.dart';

/// Component UI
class SplashScreenT5 extends StatefulWidget {
  @override
  _SplashScreenT5State createState() => _SplashScreenT5State();
}

/// Component UI
class _SplashScreenT5State extends State<SplashScreenT5> {
  @override

  /// Setting duration in splash screen
  startTime() async {
    return new Timer(Duration(milliseconds: 4500), NavigatorPage);
  }

  /// To navigate layout change
  void NavigatorPage() {
    Navigator.of(context).pushReplacement(
        PageRouteBuilder(pageBuilder: (_, __, ___) => MyHomePageT5()));
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
                image: AssetImage('assets/Template5/splashScreen.png'),
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
                        color: Colors.black45,
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
