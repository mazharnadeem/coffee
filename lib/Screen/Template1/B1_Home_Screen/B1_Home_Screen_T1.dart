import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Data_Model/dinner.dart';
import 'package:food_template_null_safety/Data_Model/lunch.dart';
import 'Detail_Home_Screen/Banner_Screen.dart';
import 'Detail_Home_Screen/Category_Screen.dart';
import 'Detail_Home_Screen/Detail_Food_Screen.dart';
import 'Search_Screen/Search_Screen_T1.dart';

class HomeScreenT1 extends StatefulWidget {
  HomeScreenT1({Key? key}) : super(key: key);

  @override
  _HomeScreenT1State createState() => _HomeScreenT1State();
}

class _HomeScreenT1State extends State<HomeScreenT1> {
  @override
  List<String> _image = [
    "assets/Template1/banner/1.jpg",
    "assets/Template1/banner/2.jpg",
    "assets/Template1/banner/3.jpg",
    "assets/Template1/banner/4.jpg",
    "assets/Template1/banner/5.jpg",
    "assets/Template1/banner/6.jpg",
    "assets/Template1/banner/7.jpg",
  ];

  var _background = Stack(
    children: <Widget>[
      Image(
        image: AssetImage('assets/Template1/image/profileBackground.png'),
        height: 350.0,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Container(
        height: 355.0,
        margin: EdgeInsets.only(top: 0.0, bottom: 105.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
            // stops: [0.0, 1.0],
            colors: <Color>[
              Color(0xFF1E2026).withOpacity(0.1),
              Color(0xFF1E2026).withOpacity(0.3),
              Color(0xFF1E2026),
              //  Color(0xFF1E2026),
            ],
          ),
        ),
      ),
    ],
  );

  var _appBar = Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: const EdgeInsets.only(top: 37.0, left: 20.0, right: 15.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Hello Alex",
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w800,
                  fontSize: 30.0,
                  letterSpacing: 1.5,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 10.0),
              child: Container(
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
            ),
          ]),
    ),
  );

  var _categories = Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Categories",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 18.5,
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "See all",
                style: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.white54,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300),
              ),
            ]),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
        ),
        child: Container(
          height: 140.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 20.0,
              ),
              cardPopular(
                  colorTop: Color(0xFF1E2026),
                  colorBottom: Color(0xFF23252E),
                  image: "assets/icon/dinner.png",
                  title: "Dinner"),
              cardPopular(
                  colorTop: Color(0xFF1E2026),
                  colorBottom: Color(0xFF23252E),
                  image: "assets/icon/Lunch.png",
                  title: "Lunch"),
              cardPopular(
                colorTop: Color(0xFF1E2026),
                colorBottom: Color(0xFF23252E),
                image: "assets/icon/breakfast.png",
                title: "Breakfast",
              ),
              cardPopular(
                  colorTop: Color(0xFF1E2026),
                  colorBottom: Color(0xFF23252E),
                  image: "assets/icon/caffe.png",
                  title: "Cafe"),
              cardPopular(
                  colorTop: Color(0xFF1E2026),
                  colorBottom: Color(0xFF23252E),
                  image: "assets/icon/healty.png",
                  title: "Healtyfood"),
              InkWell(
                onTap: () {},
                child: cardPopular(
                    colorTop: Color(0xFF1E2026),
                    colorBottom: Color(0xFF23252E),
                    image: "assets/icon/fashfood.png",
                    title: "Fashfood"),
              ),
            ],
          ),
        ),
      ),
    ],
  );

  var _nearYou = Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(
        height: 25.0,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Near you",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 18.5,
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "See all",
                style: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.white54,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300),
              ),
            ]),
      ),
      Container(
        height: 215.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(
              width: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: 265.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (ctx, index) {
                    return cardNear(lunchArray[index]);
                  },
                  itemCount: lunchArray.length,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );

  var _popular = Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(
        height: 25.0,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Popular",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 18.5,
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "See all",
                style: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.white54,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300),
              ),
            ]),
      ),
      Container(
        child: ListView.builder(
          padding: EdgeInsets.only(top: 15.0),
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
  );

  Widget build(BuildContext context) {
    var _search = Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (_, __, ___) => new searchAppbar()));
          },
          child: Container(
            height: 45.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xFF23252E),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5.0,
                      spreadRadius: 0.0)
                ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Color(0xFFFF975D),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w400,
                        color: Colors.white70,
                        fontSize: 16.0),
                  )
                ],
              ),
            ),
          ),
        ));

    var _sliderImage = Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200,
          aspectRatio: 24 / 18,
          viewportFraction: 0.9,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: _image.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new BannerScreen1(
                            image: i,
                          )));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(i), fit: BoxFit.cover),
                      color: Color(0xFF23252E)),
                ),
              );
            },
          );
        }).toList(),
      ),
    );

    var _body = Padding(
      padding: const EdgeInsets.only(top: 120.0),
      child: Column(
        children: <Widget>[
          _search,
          _sliderImage,
          _categories,
          _nearYou,
          _popular,
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFF1E2026),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            _background,
            _appBar,
            _body,
          ],
        ),
      ),
    );
  }
}

/// Component category class to set list
class category extends StatelessWidget {
  @override
  String? txt, image;
  GestureTapCallback? tap;
  double? padding, sizeImage;

  category({this.txt, this.image, this.tap, this.padding, this.sizeImage});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: padding!),
                      child: Image.asset(
                        image!,
                        height: sizeImage,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        txt!,
                        style: TextStyle(
                          fontSize: 14.5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Sofia",
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 15.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 0.1,
            color: Colors.white70,
          )
        ],
      ),
    );
  }
}

class cardPopular extends StatelessWidget {
  Color? colorTop, colorBottom;
  String? image, title;
  cardPopular({this.colorTop, this.colorBottom, this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 4.0, top: 3.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => new CategoryScreenT1(
                    title: title,
                  ),
              transitionDuration: Duration(milliseconds: 1000),
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
            Container(
              height: 95.0,
              width: 95.0,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 8.0, color: Colors.black54)],
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
                      height: 35,
                      color: Colors.white54,
                    )),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                title!,
                style: TextStyle(
                    color: Colors.white70,
                    fontFamily: "Sofia",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class cardNear extends StatelessWidget {
  lunch _lunch;
  cardNear(this._lunch);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (_, __, ___) => new DetailFoodScreenT1(
                  title: _lunch.title,
                  id: _lunch.id,
                  image: _lunch.image,
                ),
            transitionDuration: Duration(milliseconds: 1000),
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
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  height: 110.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(_lunch.image!), fit: BoxFit.contain),
                    boxShadow: [
                      BoxShadow(blurRadius: 0.0, color: Colors.black87)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    gradient: LinearGradient(colors: [
                      Color(0xFF1E2026),
                      Color(0xFF23252E),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              _lunch.title!,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Sofia",
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
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
                  color: Colors.white70,
                ),
                Text(
                  _lunch.location!,
                  style: TextStyle(
                      color: Colors.white70,
                      fontFamily: "Sofia",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300),
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
                        color: Colors.white60,
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
            pageBuilder: (_, __, ___) => new DetailFoodScreenT1(
                  title: _dinner.title,
                  id: _dinner.id,
                  image: _dinner.image,
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
        padding: const EdgeInsets.only(top: 15.0, left: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: 'hero-tag-${_dinner.id}',
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Color(0xFF1E2026),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(_dinner.image!),
                        fit: BoxFit.contain,
                      ),
                      boxShadow: [
                        BoxShadow(blurRadius: 0.0, color: Colors.black87)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      gradient: LinearGradient(colors: [
                        Color(0xFF1E2026),
                        Color(0xFF23252E),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _dinner.title!,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Sofia",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
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
                        color: Colors.white70,
                      ),
                      Text(
                        _dinner.location!,
                        style: TextStyle(
                            color: Colors.white70,
                            fontFamily: "Sofia",
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300),
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
                              color: Colors.white60,
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
