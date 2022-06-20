import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_template_null_safety/Data_Model/myOrderDetail.dart';

import 'Step_Order/personalInformation.dart';

class MyOrderScreenT2 extends StatefulWidget {
  MyOrderScreenT2({Key? key}) : super(key: key);

  @override
  _MyOrderScreenT2State createState() => _MyOrderScreenT2State();
}

class _MyOrderScreenT2State extends State<MyOrderScreenT2> {
  final List<myOrderModel> items = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      items.add(
        myOrderModel(
          img: "assets/image/image_recipe/recipe1.jpg",
          id: 1,
          title: "Spaghetti Carbonara",
          desc: "Chicken World Restaurant",
          price: "\$ 20.00",
        ),
      );
    });
  }

  /// Declare price and value for chart
  int value = 1;
  int pay = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xFFF48522)),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "My Order",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                fontWeight: FontWeight.w600),
          ),
          elevation: 0.0,
        ),

        ///
        ///
        /// Checking item value of cart
        ///
        ///
        body: items.length > 0
            ? ListView.builder(
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
                      dismissible: DismissiblePane(onDismissed: () {}),
                      children: [
                        new SlidableAction(
                          key: Key(items[position].id.toString()),
                          label: "Item Delete",
                          backgroundColor: Colors.red,
                          icon: Icons.delete,
                          onPressed: (s) {
                            ///
                            /// SnackBar show if cart delet
                            ///
                            Scaffold.of(context).showSnackBar(SnackBar(
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
                            Scaffold.of(context).showSnackBar(SnackBar(
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
                          top: 10.0, left: 13.0, right: 13.0, bottom: 10.0),

                      /// Background Constructor for card
                      child: Container(
                        height: 220.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.1),
                              blurRadius: 3.5,
                              spreadRadius: 0.4,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.all(10.0),

                                    /// Image item
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.1),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black12
                                                      .withOpacity(0.1),
                                                  blurRadius: 0.5,
                                                  spreadRadius: 0.1)
                                            ]),
                                        child: Image.asset(
                                          '${items[position].img}',
                                          height: 130.0,
                                          width: 120.0,
                                          fit: BoxFit.cover,
                                        ))),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, left: 10.0, right: 5.0),
                                    child: Column(
                                      /// Text Information Item
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          '${items[position].title}',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Sans",
                                            color: Colors.black87,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(top: 10.0)),
                                        Text(
                                          '${items[position].desc}',
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(top: 10.0)),
                                        Text('${items[position].price}'),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 18.0, left: 0.0),
                                          child: Container(
                                            width: 112.0,
                                            decoration: BoxDecoration(
                                                color: Colors.white70,
                                                border: Border.all(
                                                    color: Colors.black12
                                                        .withOpacity(0.1))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                /// Decrease of value item
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      value = value - 1;
                                                      pay = 950 * value;
                                                    });
                                                  },
                                                  child: Container(
                                                    height: 30.0,
                                                    width: 30.0,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            right: BorderSide(
                                                                color: Colors
                                                                    .black12
                                                                    .withOpacity(
                                                                        0.1)))),
                                                    child: Center(
                                                        child: Text("-")),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 18.0),
                                                  child: Text(value.toString()),
                                                ),

                                                /// Increasing value of item
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      value = value + 1;
                                                      pay = 950 * value;
                                                    });
                                                  },
                                                  child: Container(
                                                    height: 30.0,
                                                    width: 28.0,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            left: BorderSide(
                                                                color: Colors
                                                                    .black12
                                                                    .withOpacity(
                                                                        0.1)))),
                                                    child: Center(
                                                        child: Text("+")),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(top: 8.0)),
                            Divider(
                              height: 2.0,
                              color: Colors.black12,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 9.0, left: 10.0, right: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),

                                    /// Total price of item buy
                                    child: Text(
                                      "Total :" + " \$" + pay.toString(),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.5,
                                          fontFamily: "Sans"),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              pageBuilder: (_, __, ___) =>
                                                  personalInformation()));
                                    },
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Container(
                                        height: 40.0,
                                        width: 120.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF48522),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Pay",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Sans",
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.vertical,
              )
            : noItemCart());
  }
}

///
///
/// If no item cart this class showing
///
class noItemCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: 500.0,
      color: Colors.white,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding:
                    EdgeInsets.only(top: mediaQueryData.padding.top + 50.0)),
            Image.asset(
              "assets/Template2/ilustrasion/emptyCart.png",
              height: 300.0,
            ),
            Padding(padding: EdgeInsets.only(bottom: 10.0)),
            Text(
              "Not Have Item",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.5,
                  color: Colors.black26.withOpacity(0.2),
                  fontFamily: "Popins"),
            ),
          ],
        ),
      ),
    );
  }
}
