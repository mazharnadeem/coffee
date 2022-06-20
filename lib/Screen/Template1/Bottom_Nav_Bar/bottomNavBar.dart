import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template1/B1_Home_Screen/B1_Home_Screen_T1.dart';
import 'package:food_template_null_safety/Screen/Template1/B2_Maps_Screen/B2_Maps_Screen_T1.dart';
import 'package:food_template_null_safety/Screen/Template1/B3_Discover_Screen/B3_Discover_Screen_T1.dart';
import 'package:food_template_null_safety/Screen/Template1/B4_Cart_Screen/B4_Cart_Screen.dart';
import 'package:food_template_null_safety/Screen/Template1/B5_Profile_Screen/B5_ProfileScreen.dart';
import 'custom_nav_bar.dart';

class bottomNavBar extends StatefulWidget {
  bottomNavBar();

  _bottomNavBarState createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int currentIndex = 0;
  bool _color = true;
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return new HomeScreenT1();
        break;
      case 1:
        return new MapsScreenT1();
        break;
      case 2:
        return new DiscoverScreenT1();
        break;
      case 3:
        return new CartScreenT1();
        break;
      case 4:
        return new ProfileScreenT1();
        break;
      default:
        return new HomeScreenT1();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: callPage(currentIndex),
      bottomNavigationBar: BottomNavigationDotBar(
          color: Colors.grey.withOpacity(0.35),
          items: <BottomNavigationDotBarItem>[
            BottomNavigationDotBarItem(
                icon: IconData(0xe900, fontFamily: 'home'),
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                  });
                }),
            BottomNavigationDotBarItem(
                icon: IconData(
                  0xe900,
                  fontFamily: 'location',
                ),
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                }),
            BottomNavigationDotBarItem(
                icon: IconData(
                  0xe900,
                  fontFamily: 'myorder',
                ),
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                }),
            BottomNavigationDotBarItem(
                icon: Icons.local_grocery_store,
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                }),
            BottomNavigationDotBarItem(
                icon: IconData(0xe900, fontFamily: 'profile'),
                onTap: () {
                  setState(() {
                    currentIndex = 4;
                  });
                }),
          ]),
    );
  }
}
