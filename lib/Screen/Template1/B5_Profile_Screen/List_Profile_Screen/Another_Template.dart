import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template2/Intro/Splash_Screen_T2.dart';
import 'package:food_template_null_safety/Screen/Template3/OnBoarding_Screen/SplashScreen_T3.dart';
import 'package:food_template_null_safety/Screen/Template4/SplashScreen.dart';
import 'package:food_template_null_safety/Screen/Template5/HomePage/HomePageT5.dart';
import 'package:food_template_null_safety/Screen/Template5/Splash/SplashScreenT5.dart';

class AnotherTemplateScreen extends StatefulWidget {
  AnotherTemplateScreen({Key? key}) : super(key: key);

  @override
  _AnotherTemplateScreenState createState() => _AnotherTemplateScreenState();
}

class _AnotherTemplateScreenState extends State<AnotherTemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF23252E),
      appBar: AppBar(
        brightness: Brightness.dark,
        centerTitle: true,
        elevation: 0.2,
        iconTheme: IconThemeData(color: Color(0xFFFF975D)),
        backgroundColor: Color(0xFF23252E),
        title: Text(
          "See All Template",
          style: TextStyle(
              color: Colors.white, fontFamily: "Sofia", fontSize: 17.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new SplashScreenT2()));
                },
                child: card([Color(0xFFFEE140), Color(0xFFFA709A)],
                    Color(0xFFFA709A), "Template 2")),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new SplashScreenT3()));
                },
                child: card([Color(0xFFFEE140), Color(0xFFFA709A)],
                    Color(0xFFFA709A), "Template 3")),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreenT4()));
                },
                child: card([Color(0xFFFEE140), Color(0xFFFA709A)],
                    Color(0xFFFA709A), "Template 4")),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreenT5()));
                },
                child: card([Color(0xFFFEE140), Color(0xFFFA709A)],
                    Color(0xFFFA709A), "Template 5")),
            SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
  }

  Widget card(List<Color> _colorGradient, Color _colorShadow, String _title) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 15.0),
      child: Container(
        height: 130.0,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: _colorGradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                  color: _colorShadow.withOpacity(0.2),
                  blurRadius: 20.0,
                  spreadRadius: 0.1,
                  offset: Offset(3, 10))
            ]),
        child: Center(
          child: Text(
            _title,
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
