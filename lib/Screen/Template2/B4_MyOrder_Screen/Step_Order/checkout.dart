import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template2/B4_MyOrder_Screen/Step_Order/paymentMethod.dart';
import 'package:food_template_null_safety/Screen/Template2/Bottom_Nav_Bar/BottomNavigationBar.dart';

import 'final_checkout.dart';
import 'newDelivery.dart';

class checkout extends StatefulWidget {
  checkout({Key? key}) : super(key: key);

  @override
  _checkoutState createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  /// Duration for popup card if user succes to payment
  StartTime() async {
    return Timer(Duration(milliseconds: 1450), navigator);
  }

  /// Navigation to route after user succes payment
  void navigator() {
    Navigator.of(context).pushReplacement(PageRouteBuilder(
        pageBuilder: (_, __, ___) => new bottomNavigationBarT2()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Checkout",
          style: TextStyle(fontFamily: "Sofia"),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 32.0, left: 10.0, right: 10.0, bottom: 50.0),
              child: Container(
                height: 550.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15.0,
                      spreadRadius: 10.0,
                      color: Colors.black12.withOpacity(0.03),
                    )
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, left: 15.0, right: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Delivery Address",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w700,
                            fontSize: 17.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) => deliveryAddress()));
                        },
                        child: Container(
                          height: 55.5,
                          decoration: BoxDecoration(
                            color: Color(0xFFF8F8F8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            border: Border.all(
                              color: Colors.orange,
                              width: 0.9,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  "assets/Template2/house.png",
                                  height: 30.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 2.0),
                                  child: Text(
                                    "928 Lehner Junction Apt. 047",
                                    style: TextStyle(
                                        fontFamily: "Sofia",
                                        color: Colors.black87,
                                        fontSize: 16.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        "Payment Method",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w700,
                            fontSize: 17.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) => paymentMethod()));
                        },
                        child: Container(
                          height: 55.5,
                          decoration: BoxDecoration(
                            color: Color(0xFFF8F8F8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            border: Border.all(
                              color: Colors.orange,
                              width: 0.9,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  "assets/Template2/paypal.png",
                                  height: 30.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 2.0),
                                  child: Text(
                                    "Wilson.casper@gmail.com",
                                    style: TextStyle(
                                        fontFamily: "Sofia",
                                        color: Colors.black87,
                                        fontSize: 16.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        "Total Cost",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w700,
                            fontSize: 17.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) => finalCheckout()));
                        },
                        child: Container(
                          height: 55.5,
                          decoration: BoxDecoration(
                            color: Color(0xFFF8F8F8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            border: Border.all(
                              color: Colors.orange,
                              width: 0.9,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  "assets/Template2/money.png",
                                  height: 19.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 2.0),
                                  child: Text(
                                    "\$52.00",
                                    style: TextStyle(
                                        fontFamily: "Sofia",
                                        color: Colors.black87,
                                        fontSize: 16.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      InkWell(
                        onTap: () {
                          _showDialog(context);
                        },
                        child: Container(
                          height: 50.0,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "Payment",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Sofia",
                                  fontSize: 19.0),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Color(0xFFF48522)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Card Popup if success payment
_showDialog(BuildContext ctx) {
  showDialog(
    context: ctx,
    barrierDismissible: true,
    builder: (BuildContext context) => SimpleDialog(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 30.0, right: 60.0, left: 60.0),
          color: Colors.white,
          child: Image.asset(
            "assets/Template2/checklist.png",
            height: 110.0,
          ),
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            "Your order in process",
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
                fontSize: 22.0),
          ),
        )),
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 40.0),
          child: Text(
            "Thank you for buying food \nin this apps",
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
                fontSize: 17.0,
                color: Colors.black26),
            textAlign: TextAlign.center,
          ),
        )),
      ],
    ),
  );
}
