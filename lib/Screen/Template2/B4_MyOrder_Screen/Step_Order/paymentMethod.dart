import 'package:flutter/material.dart';

import 'addCreditCard.dart';

class paymentMethod extends StatefulWidget {
  paymentMethod({Key? key}) : super(key: key);

  @override
  _paymentMethodState createState() => _paymentMethodState();
}

class _paymentMethodState extends State<paymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF7F7FB),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Payment Method",
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w600,
                fontSize: 17.0),
          ),
          elevation: 0.0,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            card(
              image: "assets/Template2/paypal.png",
              title: "Pay with Paypal",
              desc: "Pay your order food with paypal",
            ),
            card(
              image: "aassets/Template2/cod.png",
              title: "Cash on Delivery",
              desc: "Pay your order cash on delivery",
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new addCreditCard(),
                      transitionDuration: Duration(milliseconds: 600),
                      transitionsBuilder:
                          (_, Animation<double> animation, __, Widget child) {
                        return Opacity(
                          opacity: animation.value,
                          child: child,
                        );
                      }));
                },
                child: card(
                  image: "assets/Template2/creditCard.png",
                  title: "Pay with Credit Card",
                  desc: "Pay your order with credit card",
                )),
            SizedBox(
              height: 140.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                height: 55.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60.0)),
                    color: Color(0xFFF48522)),
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Sofia",
                        fontSize: 17.0),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class card extends StatelessWidget {
  String? image, title, desc;
  card({this.image, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 110.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image!,
              height: 60.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title!,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Sofia",
                        fontSize: 18.0),
                  ),
                  Text(
                    desc!,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Sofia",
                        fontSize: 15.0,
                        color: Colors.black26),
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
