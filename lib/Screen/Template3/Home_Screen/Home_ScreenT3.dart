import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_template_null_safety/Data_Model/ModelFashFood.dart';
import 'package:food_template_null_safety/Data_Model/ModelHealtyFood.dart';
import 'package:food_template_null_safety/Screen/Template3/Component_Home_Screen/Home_Clipper.dart';
import 'dart:math' as math;

import 'Detail_Food_Screen/Detail_ScreenT3.dart';
import 'Drawer_Screen/Drawer_Screen.dart';

class HomePageT3 extends StatefulWidget {
  @override
  _HomePageT3State createState() => _HomePageT3State();
}

class _HomePageT3State extends State<HomePageT3> {
  List<FashFood> foodFashList = FashFood.list;
  List<HealtyFood> foodHealtyList = HealtyFood.list;
  PageController pageController = PageController(viewportFraction: .8);
  var paddingLeft = 0.0;

  ///
  ///
  /// Bool to set true or false color button
  ///
  ///
  bool button1 = true;
  bool button2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 60, top: 60),
                child: button1 ? _buildFashFood() : _buildHealtyFood()),

            ///
            ///
            /// Create Appbar
            ///
            ///
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding:
                        EdgeInsets.only(top: 40.0, left: 80.0, right: 20.0),
                    child: _customAppBar())),
            Container(
              color: Color(0xFF3A36D5),
              height: MediaQuery.of(context).size.height,
              width: 60,
              padding: EdgeInsets.only(top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) =>
                              new drawerProfileScreen()));
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(bottom: 16, top: 17.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///
            ///
            /// Create left bottom nav bar
            ///
            ///
            Positioned(
              bottom: 200,
              child: Transform.rotate(
                angle: -math.pi / 2,
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        _buildMenu("Fash Food", 0),
                        _buildMenu("Healty Food", 1),
                      ],
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 250),
                      margin: EdgeInsets.only(left: paddingLeft),
                      width: 150,
                      height: 75,
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: ClipPath(
                              clipper: AppClipper(),
                              child: Container(
                                width: 150,
                                height: 60,
                                color: Color(0xFF3A36D5),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Transform.rotate(
                              angle: math.pi / 2,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 16,
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
          ],
        ),
      ),
    );
  }

  Widget _buildMenu(String menu, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          paddingLeft = index * 150.0;
          if (button1 == true && index == 1) {
            button1 = false;
            setState(() {
              index = 0;
            });
          } else {
            button1 = true;
            setState(() {
              index = 1;
            });
          }
        });
      },
      child: Container(
        width: 150,
        padding: EdgeInsets.only(top: 16),
        child: Center(
          child: Text(
            menu,
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontFamily: "Sofia"),
          ),
        ),
      ),
    );
  }

  Widget _buildFashFood() {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  height: 390,
                  child: PageView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: foodFashList.length,
                    controller: pageController,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => DetailPage(
                                  calory: foodFashList[index].calory!.toInt(),
                                  image: foodFashList[index].imgPath,
                                  item: foodFashList[index].item,
                                  price: foodFashList[index].price!.toInt(),
                                  protein: foodFashList[index].protein!.toInt(),
                                  title: foodFashList[index].name,
                                  weight: foodFashList[index].weight!.toInt()),
                            ),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 340.0,
                              width: 270.0,
                              margin: EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                right: 40,
                              ),
                              padding: EdgeInsets.only(
                                  left: 17, top: 20.0, right: 17),
                              decoration: BoxDecoration(
                                color: Color(0xFFE9E8FD),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(32),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Hero(
                                    tag: "image${foodFashList[index].imgPath}",
                                    child: Center(
                                      child: Image(
                                        width: 130,
                                        height: 130,
                                        image: AssetImage(
                                            "assets/${foodFashList[index].imgPath}"),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 12,
                                        unratedColor: Colors.black12,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 1.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.yellowAccent,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "(120 Reviews)",
                                        style: TextStyle(
                                            fontSize: 11, fontFamily: "Sofia"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "${foodFashList[index].name}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontFamily: "Sofia"),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Spesial menu from foodie apps for you this is recommended",
                                    style: TextStyle(
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black38),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0XFFcc3e12),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: 6,
                                        horizontal: 20,
                                      ),
                                      child: Text(
                                        "\$${foodFashList[index].price!.toInt()}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Sofia"),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Popular",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        fontFamily: "Sofia"),
                  ),
                ),
                _buildPopularFashList(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHealtyFood() {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  height: 390,
                  child: PageView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: foodHealtyList.length,
                    controller: pageController,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => DetailPage(
                                  calory: foodHealtyList[index].calory!.toInt(),
                                  image: foodHealtyList[index].imgPath,
                                  item: foodHealtyList[index].item,
                                  price: foodHealtyList[index].price!.toInt(),
                                  protein:
                                      foodHealtyList[index].protein!.toInt(),
                                  title: foodHealtyList[index].name,
                                  weight:
                                      foodHealtyList[index].weight!.toInt()),
                            ),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 340.0,
                              width: 270.0,
                              margin: EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                right: 40,
                              ),
                              padding: EdgeInsets.only(
                                  left: 17, top: 20.0, right: 17),
                              decoration: BoxDecoration(
                                color: Color(0xFFE9E8FD),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(32),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Hero(
                                    tag:
                                        "image${foodHealtyList[index].imgPath}",
                                    child: Center(
                                      child: Image(
                                        width: 130,
                                        height: 130,
                                        image: AssetImage(
                                            "assets/${foodHealtyList[index].imgPath}"),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 12,
                                        unratedColor: Colors.black12,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 1.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.yellowAccent,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "(120 Reviews)",
                                        style: TextStyle(
                                            fontSize: 11, fontFamily: "Sofia"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "${foodHealtyList[index].name}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontFamily: "Sofia"),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Spesial menu from foodie apps for you this is recommended",
                                    style: TextStyle(
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black38),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0XFFcc3e12),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: 6,
                                        horizontal: 20,
                                      ),
                                      child: Text(
                                        "\$${foodHealtyList[index].price!.toInt()}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Sofia"),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Popular",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        fontFamily: "Sofia"),
                  ),
                ),
                _buildPopularHealtyList(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPopularFashList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: foodFashList.length,
      padding: EdgeInsets.only(
        left: 40,
        bottom: 16,
        right: 5,
        top: 20,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => DetailPage(
                    calory: foodFashList[index].calory!.toInt(),
                    image: foodFashList[index].imgPath,
                    item: foodFashList[index].item,
                    price: foodFashList[index].price!.toInt(),
                    protein: foodFashList[index].protein!.toInt(),
                    title: foodFashList[index].name,
                    weight: foodFashList[index].weight!.toInt()),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.only(left: 8, top: 10.0, bottom: 10.0),
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Color(0xFFE9E8FD),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Row(
              children: <Widget>[
                Image(
                  width: 80.0,
                  height: 80.0,
                  image: AssetImage("assets/${foodFashList[index].imgPath}"),
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "${foodFashList[index].name}",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      width: 150.0,
                      child: Text(
                        "Spesial menu from foodie apps",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w400,
                            color: Colors.black38),
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "\$${foodFashList[index].price!.toInt()}",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0XFFcc3e12),
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildPopularHealtyList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: foodHealtyList.length,
      padding: EdgeInsets.only(
        left: 40,
        bottom: 16,
        right: 5,
        top: 20,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => DetailPage(
                    calory: foodHealtyList[index].calory!.toInt(),
                    image: foodHealtyList[index].imgPath,
                    item: foodHealtyList[index].item,
                    price: foodHealtyList[index].price!.toInt(),
                    protein: foodHealtyList[index].protein!.toInt(),
                    title: foodHealtyList[index].name,
                    weight: foodHealtyList[index].weight!.toInt()),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.only(left: 8, top: 10.0, bottom: 10.0),
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Color(0xFFE9E8FD),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Row(
              children: <Widget>[
                Image(
                  width: 80.0,
                  height: 80.0,
                  image: AssetImage("assets/${foodHealtyList[index].imgPath}"),
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "${foodHealtyList[index].name}",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      width: 150.0,
                      child: Text(
                        "Spesial menu from foodie apps",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w400,
                            color: Colors.black38),
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "\$${foodHealtyList[index].price!.toInt()}",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0XFFcc3e12),
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _customAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: "Hello,\n",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Sofia", fontSize: 17.0),
              children: [
                TextSpan(
                  text: "Brestley Hadwey",
                  style: TextStyle(
                    color: Color(0xFF3A36D5),
                    fontWeight: FontWeight.bold,
                    fontSize: 19.0,
                    height: 1.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 16),
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      "https://images2.imgbox.com/7d/50/GDU0vQnM_o.png",
                      errorListener: () => new Icon(Icons.error),
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(150.0))),
          ),
        ],
      ),
    );
  }
}
