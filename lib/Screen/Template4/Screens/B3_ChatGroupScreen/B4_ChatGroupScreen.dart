import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'Chatting/ChattingScreen.dart';

class ChatGroupRecipe extends StatefulWidget {
  @override
  _ChatGroupRecipeState createState() => _ChatGroupRecipeState();
}

class _ChatGroupRecipeState extends State<ChatGroupRecipe> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,

      ///
      /// Appbar
      ///
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Foodie Group",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Sofia",
              fontSize: 18.5,
              fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(EvaIcons.search),
          )
        ],
      ),

      ///
      /// Body
      ///
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ///
            /// ListView scroll horizontal under appbar
            ///
            Container(
              color: Colors.grey[100],
              width: double.infinity,
              height: 110.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _card(
                        "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                        "Sofia"),
                    _card(
                        "https://images.pexels.com/photos/3779853/pexels-photo-3779853.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                        "Turner"),
                    _card(
                        "https://images.pexels.com/photos/3775540/pexels-photo-3775540.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                        "Dakota"),
                    _card(
                        "https://images.pexels.com/photos/3763188/pexels-photo-3763188.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                        "Stephanie"),
                    _card(
                        "https://images.pexels.com/photos/4153629/pexels-photo-4153629.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                        "Elish"),
                    _card(
                        "https://images.pexels.com/photos/3781543/pexels-photo-3781543.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                        "Katerina"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              child: Text(
                "Popular Group",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      _cardGroup(_width / 2.2, 200.0, "Fash Food", "325",
                          "https://images.pexels.com/photos/4193871/pexels-photo-4193871.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      SizedBox(
                        height: 10.0,
                      ),
                      _cardGroup(_width / 2.2, 250.0, "Healty Food", "525",
                          "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      _cardGroup(_width / 2.2, 250.0, "Vegetarian", "525",
                          "https://images.pexels.com/photos/1028598/pexels-photo-1028598.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      SizedBox(
                        height: 10.0,
                      ),
                      _cardGroup(_width / 2.2, 200.0, "Low Cardio", "525",
                          "https://images.pexels.com/photos/949067/pexels-photo-949067.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _cardGroup(double _width, double _height, String _title,
      String _person, String _image) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (_, __, ___) => chatItem(
                  title: _title,
                )));
      },
      child: Container(
        height: _height,
        width: _width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: CachedNetworkImageProvider(
                  _image,
                  errorListener: () => new Icon(Icons.error),
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 10.0,
              bottom: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _title,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                        shadows: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 4.0,
                              spreadRadius: 10.0)
                        ]),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white.withOpacity(0.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            EvaIcons.people,
                            color: Colors.white,
                          ),
                          Text(
                            _person + " People",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w700,
                                shadows: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 4.0,
                                      spreadRadius: 10.0)
                                ]),
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ///
  /// Card for image profile and name
  ///
  Widget _card(String img, name) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 4.0, bottom: 8.0, left: 19.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => chatItem(
                    title: name,
                  )));
        },
        child: Column(
          children: <Widget>[
            Container(
              height: 57.0,
              width: 57.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        img,
                        errorListener: () => new Icon(Icons.error),
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(150.0))),
            ),
            SizedBox(
              height: 9.0,
            ),
            Text(
              name,
              style: TextStyle(fontFamily: "Sofia"),
            )
          ],
        ),
      ),
    );
  }
}
