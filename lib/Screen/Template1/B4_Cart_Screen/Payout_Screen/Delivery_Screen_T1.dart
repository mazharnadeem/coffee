import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template1/Bottom_Nav_Bar/bottomNavBar.dart';

import 'Payment_Screen_T1.dart';

class DeliveryScreenT1 extends StatefulWidget {
  DeliveryScreenT1({Key? key}) : super(key: key);

  @override
  _DeliveryScreenT1State createState() => _DeliveryScreenT1State();
}

class _DeliveryScreenT1State extends State<DeliveryScreenT1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E2026),
      appBar: AppBar(
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text(
          "Delivery To",
          style: TextStyle(
              fontFamily: "Sofia",
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pushReplacement(
              PageRouteBuilder(pageBuilder: (_, __, ___) => bottomNavBar())),
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
                _circle(),
                Icon(
                  Icons.credit_card,
                  color: Colors.white70,
                  size: 21.0,
                ),
                _circle(),
                Icon(
                  Icons.check_circle,
                  color: Colors.white70,
                  size: 21.0,
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              color: Color(0xFF23252E),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 30.0, bottom: 50.0),
                child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.white,
                    hintColor: Colors.white.withOpacity(0.1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _inputData("FULL NAME", "Alex Da Costa"),
                      SizedBox(
                        height: 30.0,
                      ),
                      _inputData("LOCATED", "Mapletree Business City"),
                      SizedBox(
                        height: 30.0,
                      ),
                      _inputData("ADDRESS",
                          "70 Pasir Panjang Rd, #03-71, Singapore 117371"),
                      SizedBox(
                        height: 30.0,
                      ),
                      _inputData("COUNTRY", "United State"),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 50.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                PageRouteBuilder(
                                    pageBuilder: (_, __, ____) =>
                                        PaymentScreenT1()));
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
                              "Continue",
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _inputData(String _title, String _hint) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        _title,
        style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontFamily: "Sofia",
            fontWeight: FontWeight.w600),
      ),
      TextFormField(
        style: new TextStyle(color: Colors.white),
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        autofocus: false,
        decoration: InputDecoration(
            // icon: Padding(
            //   padding: const EdgeInsets.only(
            //       right: 10.0),
            //   child: Icon(
            //     Icons.email,
            //     color:  Colors.white70,
            //     size: 20,
            //   ),
            // ),
            contentPadding: EdgeInsets.all(0.0),
            filled: true,
            fillColor: Colors.transparent,
            labelText: _hint,
            hintStyle: TextStyle(color: Colors.white),
            labelStyle: TextStyle(
              color: Colors.white70,
            )),
      ),
    ],
  );
}

Widget _circle() {
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
