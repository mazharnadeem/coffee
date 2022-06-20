import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class searchAppbar extends StatefulWidget {
  @override
  _searchAppbarState createState() => _searchAppbarState();
}

class _searchAppbarState extends State<searchAppbar> {
  @override
  Widget build(BuildContext context) {
    /// Sentence Text header
    var _textHello = Padding(
      padding: const EdgeInsets.only(right: 50.0, left: 20.0),
      child: Text(
        "What would you like to search ?",
        style: TextStyle(
            letterSpacing: 0.1,
            fontWeight: FontWeight.w600,
            fontSize: 27.0,
            color: Colors.white,
            fontFamily: "Sofia"),
      ),
    );

    /// Item TextFromField Search
    var _search = Padding(
      padding: const EdgeInsets.only(top: 35.0, right: 20.0, left: 20.0),
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
            color: Color(0xFF23252E),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 15.0,
                  spreadRadius: 0.0)
            ]),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: Theme(
              data: ThemeData(hintColor: Colors.transparent),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      color: Color(0xFFFF975D),
                      size: 28.0,
                    ),
                    hintText: "Find you want",
                    hintStyle: TextStyle(
                        color: Colors.white70,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ),
        ),
      ),
    );

    /// Item Favorite Item with Card item
    var _favorite = Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: 250.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                "Favorite",
                style: TextStyle(fontFamily: "Sofia", color: Colors.white),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 20.0, bottom: 2.0),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  /// Get class FavoriteItem
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                  FavoriteItem(
                    image:
                        "https://images.pexels.com/photos/1199957/pexels-photo-1199957.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    title: "The Cheeses Guide",
                    Salary: "\$ 10.00",
                    Rating: "4.8",
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                  FavoriteItem(
                    image:
                        "https://images.pexels.com/photos/1199959/pexels-photo-1199959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    title: "Garage Bar Seafood",
                    Salary: "\$ 21.00",
                    Rating: "4.8",
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                  FavoriteItem(
                    image:
                        "https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    title: "Spagheti Kilimanjaro",
                    Salary: "\$ 15.00",
                    Rating: "4.8",
                  ),
                  Padding(padding: EdgeInsets.only(right: 10.0)),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    /// Popular Keyword Item
    var _sugestedText = Container(
      height: 145.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Text(
              "Popularity",
              style: TextStyle(fontFamily: "Sofia", color: Colors.white),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 20.0)),
              KeywordItem(
                title: "Vegan",
                title2: "Vitamin",
              ),
              KeywordItem(
                title: "Nut free",
                title2: "Good fats",
              ),
              KeywordItem(
                title: "Tofu",
                title2: "Cardio",
              ),
              KeywordItem(
                title: "Calcium",
                title2: "Protein",
              ),
            ],
          ))
        ],
      ),
    );

    var _appBar = AppBar(
      iconTheme: IconThemeData(color: Color(0xFFFF975D)),
      backgroundColor: Color(0xFF1E2026),
      brightness: Brightness.dark,
      elevation: 0.0,
    );

    return Scaffold(
      backgroundColor: Color(0xFF1E2026),
      appBar: _appBar,
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF1E2026),
          child: Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /// Caliing a variable
                _textHello,
                _search,
                _sugestedText,
                _favorite,
                Padding(padding: EdgeInsets.only(bottom: 30.0, top: 2.0))
              ],
            ),
          ),
        ),
      ),
    );
  }
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

///Favorite Item Card
class FavoriteItem extends StatelessWidget {
  String? image, Rating, Salary, title, sale;

  FavoriteItem({this.image, this.Rating, this.Salary, this.title, this.sale});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 2.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF23252E),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF656565).withOpacity(0.15),
                blurRadius: 4.0,
                spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
              )
            ]),
        child: Wrap(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 120.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7.0),
                        topRight: Radius.circular(7.0)),
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          image!,
                          errorListener: () => new Icon(Icons.error),
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    title!,
                    style: TextStyle(
                        letterSpacing: 0.5,
                        color: Colors.white70,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 1.0)),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    Salary!,
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w500,
                        color: Colors.white60,
                        fontSize: 14.0),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14.0,
                          ),
                          Text(
                            Rating!,
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.white60,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
