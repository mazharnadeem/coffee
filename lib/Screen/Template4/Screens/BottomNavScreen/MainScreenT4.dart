import 'dart:typed_data';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template4/Bloc/Bottom_Nav_Bloc.dart';
import 'package:food_template_null_safety/Screen/Template4/Screens/B1_HomeScreen/Home_ScreenT4.dart';
import 'package:food_template_null_safety/Screen/Template4/Screens/B2_CartScreen/CartScreenT4.dart';
import 'package:food_template_null_safety/Screen/Template4/Screens/B3_ChatGroupScreen/B4_ChatGroupScreen.dart';
import 'package:food_template_null_safety/Screen/Template4/Screens/B4_ProfileScreen/B4_ProfileScreenT4.dart';
import 'package:food_template_null_safety/Screen/Template4/Style/ThemeT4.dart'
    as Style;

class MainScreen extends StatefulWidget {
  createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String barcode = '';
  Uint8List bytes = Uint8List(200);
  late BottomNavBarBloc _bottomNavBarBloc;
  @override
  void initState() {
    super.initState();
    _bottomNavBarBloc = BottomNavBarBloc();
    barcode = '';
  }

  @override
  void dispose() {
    _bottomNavBarBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder<NavBarItem>(
        stream: _bottomNavBarBloc.itemStream,
        initialData: _bottomNavBarBloc.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          switch (snapshot.data) {
            case NavBarItem.HOME:
              return HomeScreen();
            case NavBarItem.NEAR:
              return CartScreenT4();
            case NavBarItem.CART:
              return ChatGroupRecipe();
            case NavBarItem.ACCOUNT:
              return ProfileScreenT4();
          }
          return Container();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: StreamBuilder(
        stream: _bottomNavBarBloc.itemStream,
        initialData: _bottomNavBarBloc.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          return BottomNavigationBar(
            selectedFontSize: 10.0,
            unselectedFontSize: 10.0,
            selectedItemColor: Style.Colors.mainColor,
            unselectedItemColor: Style.Colors.titleColor,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            iconSize: 25.0,
            currentIndex: snapshot.data!.index,
            onTap: _bottomNavBarBloc.pickItem,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  EvaIcons.homeOutline,
                  color: Style.Colors.titleColor,
                ),
                activeIcon: Icon(
                  EvaIcons.home,
                  color: Style.Colors.mainColor,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(
                  EvaIcons.shoppingBagOutline,
                  color: Style.Colors.titleColor,
                ),
                activeIcon:
                    Icon(EvaIcons.shoppingBag, color: Style.Colors.mainColor),
              ),
              BottomNavigationBarItem(
                label: 'Message',
                icon: Icon(
                  EvaIcons.inboxOutline,
                  color: Style.Colors.titleColor,
                ),
                activeIcon: Icon(EvaIcons.inbox, color: Style.Colors.mainColor),
              ),
              BottomNavigationBarItem(
                label: 'Users',
                icon: Icon(
                  EvaIcons.personDoneOutline,
                  color: Style.Colors.titleColor,
                ),
                activeIcon:
                    Icon(EvaIcons.person, color: Style.Colors.mainColor),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _alertArea() {
    return Center(
      child: Text(
        'Test Screen',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.red,
          fontSize: 25.0,
        ),
      ),
    );
  }

  Widget _settingsArea() {
    return Center(
      child: Text(
        'Test Screen',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.blue,
          fontSize: 25.0,
        ),
      ),
    );
  }
}
