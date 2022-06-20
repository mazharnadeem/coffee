import 'dart:async';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Data_Model/categoryDetail.dart';
import 'package:shimmer/shimmer.dart';

class BannerScreen1 extends StatefulWidget {
  String? image;
  BannerScreen1({this.image});
  @override
  _BannerScreen1State createState({image}) => _BannerScreen1State();
}

/// if user click icon in category layout navigate to BannerScreen1 Layout
class _BannerScreen1State extends State<BannerScreen1> {
  ///
  /// Get image data dummy from firebase server
  ///
  var imageNetwork = NetworkImage(
      "https://firebasestorage.googleapis.com/v0/b/beauty-look.appspot.com/o/Screenshot_20181005-213916.png?alt=media&token=f952caf0-2de7-417c-9c9e-3b6dcea953f4");

  ///
  /// check the condition is right or wrong for image loaded or no
  ///
  bool loadImage = true;

  // generates a new Random object
  final _random = new Random();

  /// custom text variable is make it easy a custom textStyle black font
  static var _customTextStyleBlack = TextStyle(
      fontFamily: "Sofia",
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 15.0);

  /// Custom text blue in variable
  static var _customTextStyle = TextStyle(
      fontFamily: "Sofia",
      fontWeight: FontWeight.w300,
      color: Colors.white,
      fontSize: 15.0);

  ///
  /// SetState after imageNetwork loaded to change list card
  ///
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        loadImage = false;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  /// All Widget Component layout
  @override
  Widget build(BuildContext context) {
    /// imageSlider in header layout category detail
    var _imageTop = Stack(
      children: <Widget>[
        Container(
          height: 292.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.image!), fit: BoxFit.cover)),
        ),
        Container(
          height: 292.0,
          margin: EdgeInsets.only(top: 0.0, bottom: 5.0),
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

    /// Variable Category (Sub Category)
    var _subCategory = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
            child: Text(
              "Things You Could Like",
              style: _customTextStyleBlack,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              color: Color(0xFF1E2026),
              margin: EdgeInsets.only(right: 10.0, top: 15.0),
              height: 110.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                  KeywordItem(
                    title: "Vegan",
                    title2: "Vitamin",
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  KeywordItem(
                    title: "Nut free",
                    title2: "Good fats",
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  KeywordItem(
                    title: "Tofu",
                    title2: "Cardio",
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  KeywordItem(
                    title: "Calcium",
                    title2: "Protein",
                  ),
                  Padding(padding: EdgeInsets.only(right: 20.0)),
                ],
              ),
            ),
          )
        ],
      ),
    );

    /// Variable item Discount with Card
    var _itemDiscount = Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Item Discount",
                  style: _customTextStyleBlack,
                ),
                Text("See more", style: _customTextStyle),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(right: 10.0),
              height: 300.0,

              ///
              ///
              /// check the condition if image data from server firebase loaded or no
              /// if image true (image still downloading from server)
              /// Card to set card loading animation
              ///
              ///
              child: loadImage
                  ? _loadingImageAnimationDiscount(context)
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) =>
                          discountItem(categoryArray[index]),
                      itemCount: categoryArray.length,
                    ),
            ),
          )
        ],
      ),
    );

    /// Variable item Popular with Card
    var _itemPopular = Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Item Poppular",
                    style: _customTextStyleBlack,
                  ),
                  InkWell(
                    onTap: null,
                    child: Text("See more", style: _customTextStyle),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(right: 10.0),
                height: 300.0,

                ///
                ///
                /// check the condition if image data from server firebase loaded or no
                /// if image true (image still downloading from server)
                /// Card to set card loading animation
                ///
                ///
                child: loadImage
                    ? _loadingImageAnimation(context)
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) => Item(
                            categoryArray[
                                _random.nextInt(categoryArray.length)]),
                        itemCount: categoryArray.length,
                      ),
              ),
            )
          ],
        ),
      ),
    );

    /// Variable New Items with Card
    var _itemNew = Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "News Item",
                    style: _customTextStyleBlack,
                  ),
                  InkWell(
                    onTap: null,
                    child: Text("See more", style: _customTextStyle),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(right: 10.0, bottom: 15.0),
                height: 300.0,

                ///
                ///
                /// check the condition if image data from server firebase loaded or no
                /// if image true (image still downloading from server)
                /// Card to set card loading animation
                ///
                ///
                child: loadImage
                    ? _loadingImageAnimation(context)
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) => Item(
                            categoryArray[
                                _random.nextInt(categoryArray.length)]),
                        itemCount: categoryArray.length,
                      ),
              ),
            )
          ],
        ),
      ),
    );

    var _appBar = AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      brightness: Brightness.dark,
      backgroundColor: Color(0xFF1E2026),
      centerTitle: true,
      title: Text(
        "Big Deal Promo",
        style: TextStyle(
            fontFamily: "Sofia",
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 18.0),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFF1E2026),
      appBar: _appBar,

      /// For call a variable include to body
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF1E2026),
          child: Column(
            children: <Widget>[
              _imageTop,
              _subCategory,
              _itemDiscount,
              _itemPopular,
              _itemNew
            ],
          ),
        ),
      ),
    );
  }
}

/// Class Component a Item Discount Card
class discountItem extends StatelessWidget {
  category item;

  discountItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0, left: 10.0, bottom: 10.0, right: 0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF23252E),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF656565).withOpacity(0.15),
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                )
              ]),
          child: Wrap(
            children: <Widget>[
              Container(
                width: 160.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 185.0,
                          width: 160.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(7.0),
                                topRight: Radius.circular(7.0)),
                            image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                  item.image!,
                                  errorListener: () => new Icon(Icons.error),
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          height: 25.5,
                          width: 55.0,
                          decoration: BoxDecoration(
                              color: Color(0xFFFF975D),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(5.0))),
                          child: Center(
                              child: Text(
                            "10%",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 7.0)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        item.title!,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            color: Colors.white,
                            fontFamily: "Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                item.ratting!,
                                style: TextStyle(
                                    fontFamily: "Sans",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.0),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              )
                            ],
                          ),
                          Text(
                            item.price!,
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Color(0xFFFF975D),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0),
                          )
                        ],
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
  }
}

/// Class Component Card in Category Detail
class Item extends StatelessWidget {
  category item;

  Item(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0, left: 10.0, bottom: 10.0, right: 0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF23252E),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF656565).withOpacity(0.15),
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                )
              ]),
          child: Wrap(
            children: <Widget>[
              Container(
                color: Color(0xFF23252E),
                width: 160.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 185.0,
                      width: 160.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF23252E),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7.0),
                            topRight: Radius.circular(7.0)),
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              item.image!,
                              errorListener: () => new Icon(Icons.error),
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 7.0)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        item.title!,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            color: Colors.white,
                            fontFamily: "Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                item.ratting!,
                                style: TextStyle(
                                    fontFamily: "Sans",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.0),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              )
                            ],
                          ),
                          Text(
                            item.price!,
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Color(0xFFFF975D),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0),
                          )
                        ],
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
  }
}

///
///
///
/// Loading Item Card Animation Constructor
///
///
///
class loadingMenuItemDiscountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0, left: 10.0, bottom: 10.0, right: 0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF23252E),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF656565).withOpacity(0.15),
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                )
              ]),
          child: Wrap(
            children: <Widget>[
              Shimmer.fromColors(
                baseColor: Colors.white38,
                highlightColor: Color(0xFF23252E),
                child: Container(
                  width: 160.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 185.0,
                            width: 160.0,
                            color: Colors.white12,
                          ),
                          Container(
                            height: 25.5,
                            width: 65.0,
                            decoration: BoxDecoration(
                                color: Color(0xFFD7124A),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(5.0))),
                          )
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 5.0, top: 12.0),
                          child: Container(
                            height: 9.5,
                            width: 130.0,
                            color: Colors.white12,
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 5.0, top: 10.0),
                          child: Container(
                            height: 9.5,
                            width: 80.0,
                            color: Colors.white12,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontFamily: "Sans",
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14.0,
                                )
                              ],
                            ),
                            Container(
                              height: 8.0,
                              width: 30.0,
                              color: Colors.white12,
                            )
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
      ),
    );
  }
}

///
///
///
/// Loading Item Card Animation Constructor
///
///
///
class loadingMenuItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0, left: 10.0, bottom: 10.0, right: 0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF23252E),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF656565).withOpacity(0.15),
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                )
              ]),
          child: Wrap(
            children: <Widget>[
              Shimmer.fromColors(
                baseColor: Colors.white38,
                highlightColor: Color(0xFF23252E),
                child: Container(
                  width: 160.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 185.0,
                            width: 160.0,
                            color: Colors.white12,
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 5.0, top: 12.0),
                          child: Container(
                            height: 9.5,
                            width: 130.0,
                            color: Colors.white12,
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 5.0, top: 10.0),
                          child: Container(
                            height: 9.5,
                            width: 80.0,
                            color: Colors.white12,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontFamily: "Sans",
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14.0,
                                )
                              ],
                            ),
                            Container(
                              height: 8.0,
                              width: 30.0,
                              color: Colors.white12,
                            )
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
      ),
    );
  }
}

///
///
/// Calling imageLoading animation for set a grid layout
///
///
Widget _loadingImageAnimation(BuildContext context) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) => loadingMenuItemCard(),
    itemCount: categoryArray.length,
  );
}

///
///
/// Calling imageLoading animation for set a grid layout
///
///
Widget _loadingImageAnimationDiscount(BuildContext context) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) =>
        loadingMenuItemDiscountCard(),
    itemCount: categoryArray.length,
  );
}

/// Popular Keyword Item class
class KeywordItem extends StatelessWidget {
  @override
  String? title, title2;

  KeywordItem({this.title, this.title2});

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 4.0, left: 3.0),
          child: Container(
            height: 29.5,
            width: 90.0,
            decoration: BoxDecoration(
              color: Color(0xFF23252E),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.1),
                  blurRadius: 4.5,
                  spreadRadius: 1.0,
                )
              ],
            ),
            child: Center(
              child: Text(
                title!,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white54, fontFamily: "Sans"),
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 15.0)),
        Container(
          height: 29.5,
          width: 90.0,
          decoration: BoxDecoration(
            color: Color(0xFF23252E),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.1),
                blurRadius: 4.5,
                spreadRadius: 1.0,
              )
            ],
          ),
          child: Center(
            child: Text(
              title2!,
              style: TextStyle(
                color: Colors.white54,
                fontFamily: "Sans",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
