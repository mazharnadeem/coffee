import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Data_Model/discover_model_data_1.dart';
import 'package:food_template_null_safety/Screen/Template1/B1_Home_Screen/Search_Screen/Search_Screen_T1.dart';

import 'Detail_Screen_Discover/Discover_Detail_1.dart';

class DiscoverScreenT1 extends StatefulWidget {
  DiscoverScreenT1({Key? key}) : super(key: key);

  @override
  _DiscoverScreenT1State createState() => _DiscoverScreenT1State();
}

class Product {
  String image;
  String name;
  String description;
  double price;

  Product(this.image, this.name, this.description, this.price);
}

class _DiscoverScreenT1State extends State<DiscoverScreenT1> {
  @override
  PageController? _pageController;
  int currentPage = 0;
  bool colorIconCard = false;
  bool chosseCard = false;
  bool colorIconCard2 = true;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        viewportFraction: 1.0, initialPage: currentPage, keepPage: false);
  }

  Widget build(BuildContext context) {
    var _appBar = PreferredSize(
      preferredSize: Size.fromHeight(80.0),
      child: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF1E2026),
        title: Padding(
          padding: const EdgeInsets.only(top: 33.0),
          child: Text(
            "Discover",
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w800,
                fontSize: 33.0,
                letterSpacing: 1.5,
                color: Colors.white),
          ),
        ),
        centerTitle: false,
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 10.0),
            child: Row(
              children: <Widget>[
                InkWell(
                    onTap: () {
                      setState(() {
                        if (colorIconCard == true) {
                          colorIconCard = false;
                          colorIconCard2 = true;
                          chosseCard = false;
                        } else {
                          colorIconCard = true;
                          colorIconCard2 = false;
                          chosseCard = true;
                        }
                      });
                    },
                    child: Icon(
                      Icons.calendar_view_day,
                      color: colorIconCard ? Colors.white30 : Color(0xFFFF975D),
                    )),
                SizedBox(
                  width: 14.0,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        if (colorIconCard2 == true) {
                          colorIconCard2 = false;
                          colorIconCard = true;
                          chosseCard = true;
                        } else {
                          colorIconCard2 = true;
                          colorIconCard = false;
                          chosseCard = false;
                        }
                      });
                    },
                    child: Icon(
                      Icons.dashboard,
                      color:
                          colorIconCard2 ? Colors.white30 : Color(0xFFFF975D),
                    )),
              ],
            ),
          )
        ],
      ),
    );

    var _search = Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              PageRouteBuilder(pageBuilder: (_, __, ___) => searchAppbar()));
        },
        child: Container(
          height: 52.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: Color(0xFF23252E)),
          child: Center(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Icon(
                  Icons.search,
                  color: Color(0xFFFF975D),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text("Search",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w400,
                        color: Colors.white70,
                        fontSize: 16.0))
              ],
            ),
          ),
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Color(0xFF1E2026),
        appBar: _appBar,
        body: Column(
          children: <Widget>[
            _search,
            chosseCard
                ? Expanded(
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      children: <Widget>[
                        for (var i = 0; i < discover.length; i++)
                          DiscoverCardWidget2(
                              discoverDataModel1: discover[i],
                              pageController: _pageController,
                              currentPage: i)
                      ],
                    ),
                  )
                : Expanded(
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      children: <Widget>[
                        for (var i = 0; i < discover.length; i++)
                          DiscoverCardWidget1(
                              discoverDataModel1: discover[i],
                              pageController: _pageController,
                              currentPage: i)
                      ],
                    ),
                  )
          ],
        ));
  }
}

class DiscoverCardWidget2 extends StatelessWidget {
  final DiscoverDataModel1? discoverDataModel1;
  final PageController? pageController;
  final int? currentPage;
  const DiscoverCardWidget2(
      {Key? key,
      this.discoverDataModel1,
      this.pageController,
      this.currentPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 700),
                  transitionsBuilder:
                      (_, Animation<double> animation, __, Widget child) {
                    return Opacity(
                      opacity: animation.value,
                      child: child,
                    );
                  },
                  pageBuilder: (context, _, __) => DiscoverDetailScreen1(
                        discoverDataModel1: discoverDataModel1,
                      )));
        },
        child: Container(
          height: _height / 1.52,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage("assets/Template1/image/backgroundLine.png"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: discoverDataModel1!.colors!,
              )),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 58.0,
                      width: 58.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                discoverDataModel1!.profilePicture!,
                                errorListener: () => new Icon(Icons.error),
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            discoverDataModel1!.name!,
                            style: TextStyle(
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 20.0),
                          ),
                          Text("Chef",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  fontSize: 17.0)),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190.0),
                  child: Container(
                    height: 3.5,
                    width: double.infinity,
                    color: Colors.white54,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(discoverDataModel1!.title!,
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 30.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Topping: ",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 18.0),
                    ),
                    Container(
                        width: 200.0,
                        child: Text(
                          discoverDataModel1!.topping!,
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w300,
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 18.0),
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 10.0),
                  child: Hero(
                      tag: "image-${discoverDataModel1!.title}",
                      child: Material(
                          color: Colors.transparent,
                          child: Image.asset(
                            discoverDataModel1!.image!,
                            height: _height * 0.3,
                          ))),
                )),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0, top: 15.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 40.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          discoverDataModel1!.price!,
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DiscoverCardWidget1 extends StatelessWidget {
  final DiscoverDataModel1? discoverDataModel1;
  final PageController? pageController;
  final int? currentPage;

  const DiscoverCardWidget1(
      {Key? key,
      this.discoverDataModel1,
      this.pageController,
      this.currentPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 700),
                transitionsBuilder:
                    (_, Animation<double> animation, __, Widget child) {
                  return Opacity(
                    opacity: animation.value,
                    child: child,
                  );
                },
                pageBuilder: (context, _, __) => DiscoverDetailScreen1(
                      discoverDataModel1: discoverDataModel1,
                    )));
      },
      child: AnimatedBuilder(
        animation: pageController!,
        builder: (context, child) {
          double value = 1;
          if (pageController!.position.haveDimensions) {
            value = pageController!.page! - currentPage!;
            value = (1 - (value.abs() * 0.6)).clamp(0.0, 1.0);
          }

          return Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: ClipPath(
                    clipper: CharacterCardBackgroundClipper(),
                    child: Hero(
                      tag: "background-${discoverDataModel1!.title}",
                      child: Container(
                        height: 0.6 * screenHeight,
                        width: 0.9 * screenWidth,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: discoverDataModel1!.colors!,
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.75),
                child: Hero(
                  tag: "image-${discoverDataModel1!.title}",
                  child: Image.asset(
                    discoverDataModel1!.image!,
                    height: screenHeight * 0.37 * value,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 42, right: 10, bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Hero(
                      tag: "name-${discoverDataModel1!.title}",
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          width: 270.0,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: Text(
                              discoverDataModel1!.title!,
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 35.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.white54,
                            size: 17.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            width: 250.0,
                            child: Text(
                              discoverDataModel1!.location!,
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 20.0,
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w300),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          discoverDataModel1!.calorie!,
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 22.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: Container(
                            height: 40.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                discoverDataModel1!.price!,
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CharacterCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(
        1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(size.width + 1, size.height - 1, size.width,
        size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(size.width - 1, 0,
        size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(
        1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
