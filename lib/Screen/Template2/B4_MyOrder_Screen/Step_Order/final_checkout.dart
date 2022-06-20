import 'package:flutter/material.dart';

import 'addCreditCard.dart';

class finalCheckout extends StatefulWidget {
  finalCheckout({Key? key}) : super(key: key);

  @override
  _finalCheckoutState createState() => _finalCheckoutState();
}

class _finalCheckoutState extends State<finalCheckout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Checkout",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 38.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("**** **** **** 3215",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.1,
                              fontSize: 17.0)),
                      Text("Mastercard 08/23",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              color: Colors.black26,
                              fontSize: 15.0)),
                    ],
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => new addCreditCard()));
                      },
                      child: Text(
                        "Change",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFF48522),
                            fontSize: 17.0),
                      ))
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Divider(
                height: 1.0,
                color: Colors.black12,
              ),
              SizedBox(
                height: 10.0,
              ),
              _card("assets/image/image_recipe/recipe1.jpg", "Fried Chicken",
                  "2 Items x \$8.50", "\$12.00"),
              _card("assets/image/image_recipe/recipe2.jpg", "Olaho Chicken",
                  "2 Items x \$8.50", "\$12.00"),
              _card("assets/image/image_recipe/recipe3.jpg", "Healty Food",
                  "2 Items x \$8.50", "\$12.00"),
              SizedBox(
                height: 40.0,
              ),
              Divider(
                height: 1.0,
                color: Colors.black12,
              ),
              SizedBox(
                height: 40.0,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Total",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0),
                        ),
                        SizedBox(
                          width: 75.0,
                        ),
                        Text(
                          "\$36.00",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0,
                              color: Colors.black54),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Delivery",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0),
                        ),
                        SizedBox(
                          width: 75.0,
                        ),
                        Text(
                          "\$7.00",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0,
                              color: Colors.black54),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90.0, top: 10.0),
                      child: Divider(
                        height: 1.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Total",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0,
                              color: Color(0xFFF48522)),
                        ),
                        SizedBox(
                          width: 75.0,
                        ),
                        Text(
                          "\$43.00",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0,
                              color: Color(0xFFF48522)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 55.0,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Place Order - \$43.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Sofia",
                          fontSize: 17.0),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      color: Color(0xFFF48522)),
                ),
              ),
              SizedBox(
                height: 40.0,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _card(String image, title, item, price) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 58.0,
                width: 58.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4.0,
                          spreadRadius: 1.0,
                          color: Colors.black12)
                    ]),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w700,
                          fontSize: 17.0),
                    ),
                    Text(
                      item,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w300,
                          fontSize: 15.0,
                          color: Colors.black45),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            "\$12.00",
            style: TextStyle(
                fontFamily: "Sofia",
                color: Color(0xFFF48522),
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          )
        ],
      ),
    );
  }
}
