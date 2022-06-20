import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Data_Model/breakFast.dart';
import 'package:food_template_null_safety/Data_Model/dinner.dart';
import 'package:food_template_null_safety/Data_Model/discoverNewPlaceHome.dart';
import 'package:food_template_null_safety/Data_Model/lunch.dart';
import 'package:food_template_null_safety/Screen/Template2/B1_Home_Screen/Component_Detail_Food/Food_Detail_Screen.dart';
import 'package:food_template_null_safety/Screen/Template2/B3_Category_Screen/Detail_Category/Restaurant_Screen.dart';
import '../../../Library/Carousel/CarouselPro.dart';
import 'Component_Home_Screen/appBarGradient.dart';

class HomeScreenT2 extends StatefulWidget {
  HomeScreenT2({Key? key}) : super(key: key);

  @override
  _HomeScreenT2State createState() => _HomeScreenT2State();
}

class _HomeScreenT2State extends State<HomeScreenT2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 320.0,
                      child: new Carousel(
                        boxFit: BoxFit.cover,
                        dotColor: Colors.black26,
                        dotSize: 5.5,
                        dotSpacing: 16.0,
                        dotIncreasedColor: Color(0xFFF48522),
                        dotBgColor: Colors.transparent,
                        showIndicator: true,
                        overlayShadow: true,
                        overlayShadowColors: Colors.white.withOpacity(0.2),
                        overlayShadowSize: 0.9,
                        images: [
                          NetworkImage(
                              "https://images.pexels.com/photos/1099681/pexels-photo-1099681.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                          NetworkImage(
                              "https://images.pexels.com/photos/2732663/pexels-photo-2732663.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                          NetworkImage(
                              "https://images.pexels.com/photos/1640770/pexels-photo-1640770.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                        ],
                        onImageChange: (int, s) {},
                        onImageTap: (int) {},
                        radius: Radius.circular(1.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 15.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 45.0,
                          width: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Discover New Places",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 320.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (ctx, index) {
                      return card(discoverArray[index]);
                    },
                    itemCount: discoverArray.length,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Category",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: Container(
                    height: 159.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 20.0,
                        ),
                        cardFood(
                          colorTop: Color(0xFFFF928B),
                          colorBottom: Color(0xFFFFAC81),
                          image: "assets/Template2/icon/iconBurgers.png",
                          title: "Burgers",
                          place: "1126 Places",
                        ),
                        cardFood(
                          colorTop: Color(0xFFF9D976),
                          colorBottom: Color(0xFFF39F86),
                          image: "assets/Template2/icon/iconAmerican.png",
                          title: "Hot Dog",
                          place: "133 Places",
                        ),
                        cardFood(
                          colorTop: Color(0xFF63CCD1),
                          colorBottom: Color(0xFF75E3AC),
                          image: "assets/Template2/icon/iconBreakfast.png",
                          title: "Restaurant",
                          place: "243 Places",
                        ),
                        cardFood(
                          colorTop: Color(0xFF56B4EE),
                          colorBottom: Color(0xFF59CCE1),
                          image: "assets/Template2/icon/iconPizza.png",
                          title: "Pizza",
                          place: "875 Places",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Breakfast",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 250.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (ctx, index) {
                      return cardBreakfast(breakFastArray[index]);
                    },
                    itemCount: breakFastArray.length,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Lunch",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ]),
                ),
                Container(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 250.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          primary: false,
                          itemBuilder: (ctx, index) {
                            return cardLunch(lunchArray[index]);
                          },
                          itemCount: lunchArray.length,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Dinner",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ]),
                ),
                Container(
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (ctx, index) {
                      return cardDinner(dinnerArray[index]);
                    },
                    itemCount: dinnerArray.length,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),

          /// Get a class AppbarGradient
          /// This is a Appbar in HomeScreenT2 activity
          AppbarGradient(),
        ],
      ),
    );
  }
}

class card extends StatelessWidget {
  discover _discover;
  card(this._discover);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => new FoodDetailT2(
                    title: _discover.title,
                    id: _discover.id,
                    image: _discover.image,
                    location: _discover.location,
                    price: _discover.price,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: 'hero-tag-${_discover.id}',
              child: Material(
                child: Container(
                  height: 200.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(_discover.image!),
                          fit: BoxFit.cover),
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5.0,
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 2.0)
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
                width: 160.0,
                child: Text(
                  _discover.title!,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: Colors.black87),
                  overflow: TextOverflow.ellipsis,
                )),
            SizedBox(
              height: 2.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  size: 15.0,
                  color: Colors.black12,
                ),
                Text(
                  _discover.location!,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      color: Colors.black26),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.star,
                  size: 18.0,
                  color: Colors.yellow,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Text(
                    _discover.ratting!,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Sofia",
                        fontSize: 13.0),
                  ),
                ),
                SizedBox(
                  width: 35.0,
                ),
                Container(
                  height: 23.0,
                  width: 79.0,
                  decoration: BoxDecoration(
                      color: Color(0xFFF48522),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Center(
                    child: Text("Free Delivery",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 10.0)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class cardFood extends StatelessWidget {
  Color? colorTop, colorBottom;
  String? image, title, place;
  cardFood(
      {this.colorTop, this.colorBottom, this.title, this.image, this.place});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new restaurant(
                        title: title,
                      )));
            },
            child: Material(
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(blurRadius: 8.0, color: Colors.black12)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  gradient: LinearGradient(
                      colors: [colorTop!, colorBottom!],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        image!,
                        height: 40,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              title!,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Sofia",
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              place!,
              style: TextStyle(
                  color: Colors.black12,
                  fontFamily: "Sofia",
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}

class cardBreakfast extends StatelessWidget {
  cardBreakfast(this._breakFast);

  breakFast _breakFast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => new FoodDetailT2(
                    title: _breakFast.title,
                    id: _breakFast.id,
                    image: _breakFast.image,
                    location: _breakFast.location,
                    price: _breakFast.price,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: 'hero-tag-${_breakFast.id}',
              child: Material(
                child: Container(
                  height: 140.0,
                  width: 140.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(_breakFast.image!),
                          fit: BoxFit.cover),
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5.0,
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 2.0)
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              _breakFast.title!,
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 2.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  size: 15.0,
                  color: Colors.black12,
                ),
                Text(
                  _breakFast.location!,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      color: Colors.black26),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.star,
                  size: 18.0,
                  color: Colors.yellow,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Text(
                    _breakFast.ratting!,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Sofia",
                        fontSize: 13.0),
                  ),
                ),
                SizedBox(
                  width: 35.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class cardLunch extends StatelessWidget {
  lunch _lunch;
  cardLunch(this._lunch);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (_, __, ___) => new FoodDetailT2(
                  title: _lunch.title,
                  id: _lunch.id,
                  image: _lunch.image,
                  location: _lunch.location,
                  price: _lunch.price,
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: 'hero-tag-${_lunch.id}',
              child: Material(
                child: Container(
                  height: 110.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(_lunch.image!), fit: BoxFit.cover),
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5.0,
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 2.0)
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              _lunch.title!,
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 2.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  size: 18.0,
                  color: Colors.black12,
                ),
                Text(
                  _lunch.location!,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      color: Colors.black26),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.star,
                  size: 18.0,
                  color: Colors.yellow,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Text(
                    _lunch.ratting!,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Sofia",
                        fontSize: 13.0),
                  ),
                ),
                SizedBox(
                  width: 35.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class cardDinner extends StatelessWidget {
  dinner _dinner;
  cardDinner(this._dinner);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (_, __, ___) => new FoodDetailT2(
                  title: _dinner.title,
                  id: _dinner.id,
                  image: _dinner.image,
                  location: _dinner.location,
                  price: _dinner.price,
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
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: 'hero-tag-${_dinner.id}',
              child: Material(
                child: Container(
                  height: 106.0,
                  width: 106.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3.0,
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 1.0)
                      ],
                      image: DecorationImage(
                          image: AssetImage(_dinner.image!),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _dinner.title!,
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 16.0,
                        color: Colors.black12,
                      ),
                      Text(
                        _dinner.location!,
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: Colors.black26),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 18.0,
                        color: Colors.yellow,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text(
                          _dinner.ratting!,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: "Sofia",
                              fontSize: 13.0),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
