import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template1/B4_Cart_Screen/Payout_Screen/Payment_Screen_T1.dart';
import 'package:food_template_null_safety/Screen/Template1/Bottom_Nav_Bar/bottomNavBar.dart';

class ConfirmScreenT1 extends StatefulWidget {
  ConfirmScreenT1({Key? key}) : super(key: key);

  @override
  _ConfirmScreenT1State createState() => _ConfirmScreenT1State();
}

class _ConfirmScreenT1State extends State<ConfirmScreenT1> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF1E2026),
      appBar: AppBar(
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text(
          "Confirm Order",
          style: TextStyle(
              fontFamily: "Sofia",
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pushReplacement(
              PageRouteBuilder(pageBuilder: (_, __, ___) => PaymentScreenT1())),
        ),
        backgroundColor: Color(0xFF1E2026),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Color(0xFFF48522),
                  size: 22.0,
                ),
                _circleOrange(),
                Icon(
                  Icons.credit_card,
                  color: Color(0xFFF48522),
                  size: 21.0,
                ),
                _circleOrange(),
                Icon(
                  Icons.check_circle,
                  color: Color(0xFFF48522),
                  size: 21.0,
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: double.infinity,
              color: Color(0xFF23252E),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Detail Informasion Order",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.white,
                          fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(10.0),

                            /// Image item
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.1),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Colors.black12.withOpacity(0.1),
                                          blurRadius: 0.5,
                                          spreadRadius: 0.1)
                                    ]),
                                child: Image.asset(
                                  'assets/image/image_recipe/recipe1.jpg',
                                  height: 90.0,
                                  width: 90.0,
                                  fit: BoxFit.cover,
                                ))),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 10.0, right: 5.0),
                            child: Column(
                              /// Text Information Item
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 200.0,
                                  child: Text(
                                    'Spaghetti Wok Carbonara',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Sans",
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 15.0),
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Chicken World Restaurant',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Sofia",
                                    color: Colors.white,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Text(
                                        "\$20",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Sofia",
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20.0, right: 20.0, top: _height / 3.5),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(PageRouteBuilder(
                      pageBuilder: (_, __, ____) => bottomNavBar()));
                },
                child: Container(
                  height: 52.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    gradient: LinearGradient(colors: [
                      Color(0xFFFEE140),
                      Color(0xFFFA709A),
                    ]),
                  ),
                  child: Center(
                      child: Text(
                    "Checkout",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Sofia",
                        letterSpacing: 0.9),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _circleWhite() {
  return Row(
    children: <Widget>[
      SizedBox(
        width: 18.0,
      ),
      CircleAvatar(
        backgroundColor: Colors.white70,
        radius: 2.0,
      ),
      SizedBox(
        width: 7.0,
      ),
      CircleAvatar(
        backgroundColor: Colors.white70,
        radius: 2.0,
      ),
      SizedBox(
        width: 7.0,
      ),
      CircleAvatar(
        backgroundColor: Colors.white70,
        radius: 2.0,
      ),
      SizedBox(
        width: 7.0,
      ),
      CircleAvatar(
        backgroundColor: Colors.white70,
        radius: 2.0,
      ),
      SizedBox(
        width: 18.0,
      ),
    ],
  );
}

Widget _circleOrange() {
  return Row(
    children: <Widget>[
      SizedBox(
        width: 18.0,
      ),
      CircleAvatar(
        backgroundColor: Color(0xFFF48522),
        radius: 2.0,
      ),
      SizedBox(
        width: 7.0,
      ),
      CircleAvatar(
        backgroundColor: Color(0xFFF48522),
        radius: 2.0,
      ),
      SizedBox(
        width: 7.0,
      ),
      CircleAvatar(
        backgroundColor: Color(0xFFF48522),
        radius: 2.0,
      ),
      SizedBox(
        width: 7.0,
      ),
      CircleAvatar(
        backgroundColor: Color(0xFFF48522),
        radius: 2.0,
      ),
      SizedBox(
        width: 18.0,
      ),
    ],
  );
}
