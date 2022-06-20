import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_template_null_safety/Data_Model/cartModel.dart';

import 'Payout_Screen/Confirm_Screen_T1.dart';
import 'Payout_Screen/Delivery_Screen_T1.dart';

class CartScreenT1 extends StatefulWidget {
  @override
  _CartScreenT1State createState() => _CartScreenT1State();
}

class _CartScreenT1State extends State<CartScreenT1> {
  final List<cartModel> items = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      items.add(
        cartModel(
          img: "assets/image/image_recipe/recipe1.jpg",
          id: 1,
          title: "Spaghetti Wok Carbonara",
          desc: "Chicken World Restaurant",
          price: 20,
        ),
      );
    });
  }

  /// Declare price and value for chart
  int value = 1;
  int pay = 20;
  int delivery = 4;
  int total = 24;
  String _payButton = "Pay";
  Color _colorsButton1 = Color(0xFFF48522);
  Color _colorsButton2 = Colors.orangeAccent;
  @override
  var _appBar = AppBar(
    brightness: Brightness.dark,
    iconTheme: IconThemeData(color: Color(0xFFF48522)),
    centerTitle: true,
    backgroundColor: Color(0xFF1E2026),
    title: Text(
      "My Order",
      style: TextStyle(
          fontFamily: "Sofia",
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: Colors.white),
    ),
    elevation: 0.0,
  );

  var _wallet = Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 35.0,
          width: 80.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 2.0,
                    spreadRadius: 3.0,
                    color: Color(0xFFFEE140).withOpacity(0.2))
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFFEE140),
                    Color(0xFFFA709A),
                  ])),
          child: Center(
            child: Text(
              "Wallet",
              style: TextStyle(color: Colors.white, fontFamily: "Sofia"),
            ),
          ),
        ),
        Text(
          "\$ 62.00",
          style: TextStyle(
              color: Colors.white, fontFamily: "Sofia", fontSize: 17.0),
        )
      ],
    ),
  );

  Widget build(BuildContext context) {
    var _itemOrder = Column(
      children: <Widget>[],
    );
    return Scaffold(
        backgroundColor: Color(0xFF1E2026),
        appBar: _appBar,

        ///
        ///
        /// Checking item value of cart
        ///
        ///
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _wallet,
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 0.1,
              color: Colors.white70,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 20.0),
                child: Container(
                  color: Color(0xFF23252E),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Item to Order",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              fontSize: 17.5),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (context, position) {
                            ///
                            /// Widget for list view slide delete
                            ///
                            return Slidable(
                              key: const ValueKey(0),
                              startActionPane: ActionPane(
                                // A motion is a widget used to control how the pane animates.
                                motion: const ScrollMotion(),

                                // A pane can dismiss the Slidable.
                                dismissible:
                                    DismissiblePane(onDismissed: () {}),
                                children: [
                                  new SlidableAction(
                                    key: Key(items[position].id.toString()),
                                    label: "Item Delete",
                                    backgroundColor: Colors.red,
                                    icon: Icons.delete,
                                    onPressed: (s) {
                                      setState(() {
                                        _colorsButton1 = Colors.grey;
                                        _colorsButton2 = Colors.grey;
                                        pay = 0;
                                        delivery = 0;
                                        total = 0;
                                        _payButton = "Empty";
                                        items.removeAt(position);
                                      });

                                      ///
                                      /// SnackBar show if cart delet
                                      ///
                                      Scaffold.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text("Item Deleted"),
                                        duration: Duration(seconds: 2),
                                        backgroundColor: Colors.redAccent,
                                      ));
                                    },
                                  ),
                                  new SlidableAction(
                                    label: "Item Archive",
                                    backgroundColor: Colors.blue,
                                    icon: Icons.archive,
                                    onPressed: (BuildContext context) {
                                      ///
                                      /// SnackBar show if cart Archive
                                      ///
                                      Scaffold.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text("Item Archive"),
                                        duration: Duration(seconds: 2),
                                        backgroundColor: Colors.blue,
                                      ));
                                    },
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    left: 13.0,
                                    right: 13.0,
                                    bottom: 10.0),

                                /// Background Constructor for card
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                            padding: EdgeInsets.all(10.0),

                                            /// Image item
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withOpacity(0.1),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: Colors.black12
                                                              .withOpacity(0.1),
                                                          blurRadius: 0.5,
                                                          spreadRadius: 0.1)
                                                    ]),
                                                child: Image.asset(
                                                  '${items[position].img}',
                                                  height: 90.0,
                                                  width: 90.0,
                                                  fit: BoxFit.cover,
                                                ))),
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0,
                                                left: 10.0,
                                                right: 5.0),
                                            child: Column(
                                              /// Text Information Item
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  width: 200.0,
                                                  child: Text(
                                                    '${items[position].title}',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontFamily: "Sans",
                                                        color: Colors.white,
                                                        fontSize: 17.0),
                                                    overflow: TextOverflow.clip,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8.0,
                                                ),
                                                Text(
                                                  '${items[position].desc}',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w200,
                                                    fontFamily: "Sofia",
                                                    color: Colors.white,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15.0),
                                                      child: Text(
                                                        "\$" +
                                                            '${items[position].price}',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontFamily: "Sofia",
                                                            fontSize: 17.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 18.0,
                                                              left: 0.0),
                                                      child: Container(
                                                        width: 112.0,
                                                        decoration:
                                                            BoxDecoration(
                                                                color: Color(
                                                                    0xFF1E2026)),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: <Widget>[
                                                            /// Decrease of value item
                                                            InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  value =
                                                                      value - 1;
                                                                  value =
                                                                      (value > 0
                                                                          ? value
                                                                          : 0);
                                                                  pay = items[position]
                                                                          .price! *
                                                                      value;
                                                                  total = pay +
                                                                      delivery;
                                                                });
                                                              },
                                                              child: Container(
                                                                height: 30.0,
                                                                width: 30.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF1E2026),
                                                                ),
                                                                child: Center(
                                                                    child: Text(
                                                                  "-",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontSize:
                                                                          18.0),
                                                                )),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      18.0),
                                                              child: Text(
                                                                value
                                                                    .toString(),
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                    fontFamily:
                                                                        "Sofia",
                                                                    fontSize:
                                                                        18.0),
                                                              ),
                                                            ),

                                                            /// Increasing value of item
                                                            InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  value =
                                                                      value + 1;
                                                                  pay = items[position]
                                                                          .price! *
                                                                      value;
                                                                  total = pay +
                                                                      delivery;
                                                                });
                                                              },
                                                              child: Container(
                                                                height: 30.0,
                                                                width: 28.0,
                                                                decoration: BoxDecoration(
                                                                    color: Color(
                                                                        0xFF1E2026)),
                                                                child: Center(
                                                                    child: Text(
                                                                  "+",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontSize:
                                                                          18.0),
                                                                )),
                                                              ),
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
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          scrollDirection: Axis.vertical,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      DeliveryScreenT1()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                              bottom: 15.0,
                              top: 100.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 35.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  color: _colorsButton1),
                              child: Center(
                                child: Text(
                                  _payButton,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Sofia",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 5.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Order ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 15.5,
                        fontFamily: "Sofia"),
                  ),
                  Text(
                    " \$ " + pay.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.5,
                        fontFamily: "Sofia"),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 5.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Delivery ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 15.5,
                        fontFamily: "Sofia"),
                  ),
                  Text(
                    " \$ " + delivery.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.5,
                        fontFamily: "Sofia"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 0.1,
              color: Colors.white70,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 15.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total ",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Sofia",
                        fontSize: 16.5,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    " \$ " + total.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Sofia",
                        fontSize: 16.5,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            )
          ],
        ));
  }
}
