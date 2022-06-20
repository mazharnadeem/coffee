import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template2/B1_Home_Screen/Component_Home_Screen/Search_Screen.dart';
import 'package:food_template_null_safety/Screen/Template2/B5_Profile_Screen/List_Profile_Screen/editProfile.dart';

class AppbarGradient extends StatefulWidget {
  @override
  _AppbarGradientState createState() => _AppbarGradientState();
}

class _AppbarGradientState extends State<AppbarGradient> {
  String CountNotice = "4";

  /// Build Appbar in layout home
  @override
  Widget build(BuildContext context) {
    /// Create responsive height and padding
    final MediaQueryData media = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;

    /// Create component in appbar
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: 58.0 + statusBarHeight,
      decoration: BoxDecoration(

          /// gradient in appbar
          gradient: LinearGradient(
              colors: [
                const Color(0xFFFF928B),
                const Color(0xFFFFAC81),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          /// if user click shape white in appbar navigate to search layout
          InkWell(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => SearchScreenT2(),

                  /// transtation duration in animation
                  transitionDuration: Duration(milliseconds: 750),

                  /// animation route to search layout
                  transitionsBuilder:
                      (_, Animation<double> animation, __, Widget child) {
                    return Opacity(
                      opacity: animation.value,
                      child: child,
                    );
                  }));
            },
            child: Container(
              margin: EdgeInsets.only(left: media.padding.left + 1),
              height: 37.0,
              width: 260.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  shape: BoxShape.rectangle),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 17.0)),
                  Icon(
                    Icons.search,
                    color: Colors.black12,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    left: 17.0,
                  )),
                  Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text(
                      "Search",
                      style: TextStyle(
                          fontFamily: "Popins",
                          color: Colors.black12,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.0,
                          fontSize: 16.4),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new editProfile()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Image.asset(
                  "assets/Template2/setting.png",
                  height: media.devicePixelRatio + 18.0,
                ),
              )),
        ],
      ),
    );
  }
}
