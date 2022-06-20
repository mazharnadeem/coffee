import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_template_null_safety/Data_Model/cartModel.dart';
import 'package:food_template_null_safety/Screen/Template4/Style/ThemeT4.dart'
    as Style;

class CartScreenT4 extends StatefulWidget {
  @override
  _CartScreenT4State createState() => _CartScreenT4State();
}

class _CartScreenT4State extends State<CartScreenT4> {
  final List<cartModel> items = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      items.add(
        cartModel(
          img: "assets/image/image_recipe/recipe2.jpg",
          id: 1,
          title: "Spaghetti Carbonara",
          desc: "Chicken World",
          price: 20,
        ),
      );
      items.add(
        cartModel(
          img: "assets/image/image_recipe/recipe3.jpg",
          id: 2,
          title: "Fish Spicy",
          desc: "Chicken World",
          price: 20,
        ),
      );
    });
  }

  /// Declare price and value for chart
  int value = 1;
  int pay = 40;
  int delivery = 4;
  int total = 44;
  String _payButton = "Pay";
  Color _colorsButton1 = Color(0xFF3A36D5);
  Color _colorsButton2 = Color(0xFF3A36D5).withOpacity(0.5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        ///
        ///
        /// Checking item value of cart
        ///
        ///
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 65.0),
              child: Text(
                "Shopping Cart",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 10.0),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
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
                                    left: 13.0, right: 13.0, bottom: 0.0),

                                /// Background Constructor for card
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                            padding: EdgeInsets.all(10.0),

                                            /// Image item
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15.0)),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            '${items[position].img}')),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: Colors.black12
                                                              .withOpacity(0.1),
                                                          blurRadius: 0.5,
                                                          spreadRadius: 0.1)
                                                    ]),
                                                child: Container(
                                                  height: 95.0,
                                                  width: 95.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15.0)),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            '${items[position].img}')),
                                                  ),
                                                ))),
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0,
                                                left: 5.0,
                                                right: 5.0),
                                            child: Column(
                                              /// Text Information Item
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  width: 180.0,
                                                  child: Text(
                                                    '${items[position].title}',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily: "Sans",
                                                        color: Colors.black87,
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
                                                    color: Colors.black,
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
                                                              top: 18.0,
                                                              left: 0.0),
                                                      child: Container(
                                                        width: 112.0,
                                                        decoration:
                                                            BoxDecoration(
                                                                color: Colors
                                                                    .white),
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
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .black12
                                                                        .withOpacity(
                                                                            0.1),
                                                                    borderRadius:
                                                                        BorderRadius.all(
                                                                            Radius.circular(5.0))),
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
                                                                        .black,
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
                                                                      value *
                                                                      2;
                                                                  total = pay +
                                                                      delivery;
                                                                });
                                                              },
                                                              child: Container(
                                                                height: 30.0,
                                                                width: 28.0,
                                                                decoration: BoxDecoration(
                                                                    color: Style
                                                                        .Colors
                                                                        .mainColor,
                                                                    borderRadius:
                                                                        BorderRadius.all(
                                                                            Radius.circular(5.0))),
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 5.0),
                                                      child: Text(
                                                        "\$" +
                                                            '${items[position].price}',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontFamily: "Sofia",
                                                            fontSize: 18.5,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
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
                        onTap: () {},
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
                                  color: Style.Colors.mainColor),
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
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 15.5,
                        fontFamily: "Sofia"),
                  ),
                  Text(
                    " \$ " + pay.toString(),
                    style: TextStyle(
                        color: Colors.black,
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
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 15.5,
                        fontFamily: "Sofia"),
                  ),
                  Text(
                    " \$ " + delivery.toString(),
                    style: TextStyle(
                        color: Colors.black,
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
              color: Colors.black,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 35.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total ",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Sofia",
                        fontSize: 16.5,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    " \$ " + total.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Sofia",
                        fontSize: 16.5,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
