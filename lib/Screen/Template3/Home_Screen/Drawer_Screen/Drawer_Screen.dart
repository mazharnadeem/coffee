import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template3/Home_Screen/Bag_Screen/MyBag_Screen.dart';

class drawerProfileScreen extends StatefulWidget {
  drawerProfileScreen({Key? key}) : super(key: key);

  @override
  _drawerProfileScreenState createState() => _drawerProfileScreenState();
}

class _drawerProfileScreenState extends State<drawerProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0.0,
        backgroundColor: Color(0xFF3A36D5),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300.0,
              color: Color(0xFF3A36D5),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Brestley Hadwey",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 19.0)),
                          Text("Email: warrent@gmail.com",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  fontSize: 16.0)),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            height: 35.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 1.1)),
                            child: Center(
                              child: Text(
                                "EDIT",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.white,
                                    fontSize: 13.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                  "https://images2.imgbox.com/7d/50/GDU0vQnM_o.png",
                                  errorListener: () => new Icon(Icons.error),
                                ),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(150.0))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 200.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                    color: Colors.white),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new MyBagScreenT3()));
                            },
                            child: _listText("My Bag", Icons.shopping_basket)),
                        _listText("Notification", Icons.notifications),
                        _listText("Call center", Icons.call),
                        _listText("Settings", Icons.settings),
                        _listText("Logout", Icons.exit_to_app),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _listText(String _text, IconData _iconData) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 45.0,
            width: 45.0,
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.03),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: Center(
              child: Icon(
                _iconData,
                color: Colors.black38,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            _text,
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w600,
                color: Colors.black87.withOpacity(0.6),
                fontSize: 16.0),
          )
        ],
      ),
    );
  }
}
