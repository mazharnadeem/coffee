import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template2/B5_Profile_Screen/List_Profile_Screen/aboutApps.dart';
import 'package:food_template_null_safety/Screen/Template2/B5_Profile_Screen/List_Profile_Screen/callCenter.dart';
import 'package:food_template_null_safety/Screen/Template2/B5_Profile_Screen/List_Profile_Screen/editProfile.dart';
import 'package:food_template_null_safety/Screen/Template2/Intro/chosseLogin.dart';

class ProfileScreenT2 extends StatefulWidget {
  ProfileScreenT2({Key? key}) : super(key: key);

  @override
  _ProfileScreenT2State createState() => _ProfileScreenT2State();
}

class _ProfileScreenT2State extends State<ProfileScreenT2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 352.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/Template2/backgroundProfile.png",
                      ),
                      fit: BoxFit.cover)),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 67.0, left: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 90.0,
                          width: 90.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Template2/profile.png"),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12.withOpacity(0.1),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0)
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0, top: 20.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Alex Nourin",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.0),
                                ),
                                Text(
                                  "AlexNou21@gmail.com",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16.0),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                              ]),
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230.0),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => editProfile(),

                          /// transtation duration in animation
                          transitionDuration: Duration(milliseconds: 750),

                          /// animation route to search layout
                          transitionsBuilder: (_, Animation<double> animation,
                              __, Widget child) {
                            return Opacity(
                              opacity: animation.value,
                              child: child,
                            );
                          }));
                    },
                    child: category(
                      txt: "Edit Profile",
                      image: "assets/Template2/icon/editProfile.png",
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new CallCenterT2()));
                    },
                    child: category(
                      txt: "Call Center",
                      image: "assets/Template2/icon/callCenter.png",
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new aboutApps()));
                    },
                    child: category(
                      txt: "About Apps",
                      image: "assets/Template2/icon/aboutApps.png",
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new ChosseLoginT2()));
                    },
                    child: category(
                      txt: "Logout",
                      image: "assets/Template2/icon/logout.png",
                      padding: 20.0,
                    ),
                  ),
                ],
              ),
            ),
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
  double? padding;

  category({this.txt, this.image, this.tap, this.padding});

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
                        height: 45.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        txt!,
                        style: TextStyle(
                          fontSize: 16.5,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
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
                    color: Colors.black26,
                    size: 15.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Divider(
            color: Colors.black12,
          )
        ],
      ),
    );
  }
}
