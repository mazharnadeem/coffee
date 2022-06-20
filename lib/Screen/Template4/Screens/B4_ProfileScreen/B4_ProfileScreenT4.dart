import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileScreenT4 extends StatefulWidget {
  @override
  _ProfileScreenT4State createState() => _ProfileScreenT4State();
}

class _ProfileScreenT4State extends State<ProfileScreenT4> {
  /// Text for about me under card
  String _aboutMe =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),

              ///
              /// Photo profile with name and sice join
              ///
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        image: DecorationImage(
                          image: AssetImage("assets/Template2/profile.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Kathleen Walker",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w700,
                              fontSize: 21.0,
                              color: Colors.black),
                        ),
                        Text(
                          "Member Since 18 2016",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w300,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            ///
            /// Card with horizontal scroll
            ///
            Container(
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _card(
                    "assets/Template2/icon/iconAmerican.png",
                    "Hotdoog",
                    "23 Items",
                    Color(0xFFF07DA4),
                    Color(0xFFF5AE87),
                  ),
                  _card(
                    "assets/Template2/icon/iconBreakfast.png",
                    "Fastfood",
                    "12 Items",
                    Color(0xFF63CCD1),
                    Color(0xFF75E3AC),
                  ),
                  _card(
                    "assets/Template2/icon/iconBurgers.png",
                    "Burger",
                    "42 Items",
                    Color(0xFF9183FC),
                    Color(0xFFDB8EF6),
                  ),
                  _card(
                    "assets/Template2/icon/iconPizza.png",
                    "Pizza",
                    "12 Items",
                    Color(0xFF56B4EE),
                    Color(0xFF59CCE1),
                  ),
                ],
              ),
            ),

            ///
            /// Text about me and description
            ///
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "About me",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                        fontSize: 17.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    _aboutMe,
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w200,
                        letterSpacing: 1.1,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),

            ///
            /// Circle Percent Indicator
            ///
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Overall",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      new CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 4.0,
                        animation: true,
                        percent: 0.7,
                        center: new Text(
                          "90.0%",
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.lightBlueAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Incomes",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      new CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 4.0,
                        animation: true,
                        percent: 0.7,
                        center: new Text(
                          "70.0%",
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.green,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Expenses",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      new CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 4.0,
                        animation: true,
                        percent: 0.7,
                        center: new Text(
                          "35.0%",
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.purple,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ///
  /// card for crypto list
  ///
  Widget _card(String _img, String _title, String _desc, Color _colors1,
      Color _colors2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 10.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [_colors1, _colors2]),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10.0,
                  color: _colors1.withOpacity(0.3),
                  spreadRadius: 2.0)
            ]),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 19.0, top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    _img,
                    color: Colors.white,
                    height: 30.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    _title,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: "Sofia",
                        color: Colors.white),
                  ),
                  Text(
                    _desc,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: "Sofia",
                        fontSize: 17.0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
