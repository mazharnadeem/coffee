import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template2/B1_Home_Screen/Component_Home_Screen/Search_Screen.dart';
import 'package:food_template_null_safety/Screen/Template4/Style/ThemeT4.dart'
    as Style;
import 'package:food_template_null_safety/Screen/Template4/Widgets/FooList.dart';
import 'package:food_template_null_safety/Screen/Template4/Widgets/OrderT4.dart';
import 'package:food_template_null_safety/Screen/Template4/Widgets/TopMenu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10.0),
        child: AppBar(
          brightness: Brightness.light,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Hello Sofia",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Sofia",
                      fontSize: 33.0),
                ),
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 1.0, top: 3.5),
                      child: Icon(
                        EvaIcons.bellOutline,
                        size: 25.0,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        height: 15.0,
                        width: 15.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Style.Colors.mainColor,
                          border: Border.all(width: 1.0, color: Colors.white),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 1.0, bottom: 1.0),
                              child: Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 7.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => SearchScreenT2()));
              },
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    border: Border.all(width: 1.0, color: Colors.grey[300]!)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      EvaIcons.searchOutline,
                      color: Style.Colors.mainColor,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      "Find a food or Restaurant",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontFamily: "Sofia",
                          fontSize: 16.0),
                    ),
                    SizedBox(
                      width: 35.0,
                    ),
                    Icon(
                      EvaIcons.moreHorizontalOutline,
                      color: Style.Colors.mainColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 140,
            child: HomeHeader(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Text(
              "Popular Food",
              style: TextStyle(
                  fontSize: 19.0,
                  color: Style.Colors.titleColor,
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            height: 295,
            child: FoodList(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Text(
              "Order Again",
              style: TextStyle(
                  fontSize: 19.0,
                  color: Style.Colors.titleColor,
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w700),
            ),
          ),
          OrderAgain()
        ],
      ),
    );
  }
}
