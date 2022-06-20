import 'package:flutter/material.dart';

import 'package:food_template_null_safety/Screen/Template2/B1_Home_Screen/Component_Home_Screen/Search_Screen.dart';
import 'package:food_template_null_safety/Screen/Template2/B3_Category_Screen/Detail_Category/Catering_Service_Screen.dart';
import 'package:food_template_null_safety/Screen/Template2/B3_Category_Screen/Detail_Category/Home_Made_Screen.dart';
import 'package:food_template_null_safety/Screen/Template2/B3_Category_Screen/Detail_Category/Restaurant_Screen.dart';

import 'Detail_Category/Street_Food_Screen.dart';

class CategoryScreenT2 extends StatefulWidget {
  CategoryScreenT2({Key? key}) : super(key: key);

  @override
  _CategoryScreenT2State createState() => _CategoryScreenT2State();
}

class _CategoryScreenT2State extends State<CategoryScreenT2> {
  @override
  Widget build(BuildContext context) {
    var _appbar = AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0.0,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Text(
          "Category",
          style: TextStyle(
              fontFamily: "Sofia",
              fontSize: 23.0,
              color: Colors.black,
              fontWeight: FontWeight.w700),
        ),
      ),
      actions: <Widget>[
        InkWell(
          onTap: () {
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (_, __, ___) => new SearchScreenT2()));
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0),
            child: Icon(
              Icons.search,
              size: 27.0,
              color: Colors.black54,
            ),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,

      // backgroundColor: Colors.white,

      // Calling variable appbar
      appBar: _appbar,

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new restaurant(
                            title: "Restaurant",
                          ),
                      transitionDuration: Duration(milliseconds: 600),
                      transitionsBuilder:
                          (_, Animation<double> animation, __, Widget child) {
                        return Opacity(
                          opacity: animation.value,
                          child: child,
                        );
                      }));
                },
                child: itemCard(
                  image: "assets/Template2/category/category7.jpg",
                  title: "Restaurant",
                )),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new homeMade(),
                      transitionDuration: Duration(milliseconds: 600),
                      transitionsBuilder:
                          (_, Animation<double> animation, __, Widget child) {
                        return Opacity(
                          opacity: animation.value,
                          child: child,
                        );
                      }));
                },
                child: itemCard(
                  image: "assets/Template2/category/category5.jpg",
                  title: "Home Made",
                )),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new streetFood(),
                      transitionDuration: Duration(milliseconds: 600),
                      transitionsBuilder:
                          (_, Animation<double> animation, __, Widget child) {
                        return Opacity(
                          opacity: animation.value,
                          child: child,
                        );
                      }));
                },
                child: itemCard(
                  image: "assets/Template2/category/category6.jpg",
                  title: "Street Food",
                )),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new CateringServiceT2(),
                      transitionDuration: Duration(milliseconds: 600),
                      transitionsBuilder:
                          (_, Animation<double> animation, __, Widget child) {
                        return Opacity(
                          opacity: animation.value,
                          child: child,
                        );
                      }));
                },
                child: itemCard(
                  image: "assets/Template2/category/category3.jpg",
                  title: "Catering Service",
                )),
          ],
        ),
      ),
    );
  }
}

//
// Create item card
//

class itemCard extends StatelessWidget {
  String? image, title;
  itemCard({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0, bottom: 5.0),
      child: Container(
        height: 140.0,
        width: 400.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Material(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              image:
                  DecorationImage(image: AssetImage(image!), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFABABAB).withOpacity(0.7),
                  blurRadius: 4.0,
                  spreadRadius: 3.0,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.black12.withOpacity(0.1),
              ),
              child: Center(
                child: Text(
                  title!,
                  style: TextStyle(
                    shadows: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          blurRadius: 10.0,
                          spreadRadius: 2.0)
                    ],
                    color: Colors.white,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 39.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
