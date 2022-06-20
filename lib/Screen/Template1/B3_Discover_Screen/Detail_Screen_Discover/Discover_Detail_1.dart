import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Data_Model/discover_model_data_1.dart';

class DiscoverDetailScreen1 extends StatefulWidget {
  final double _expandedBottomSheetBottomPosition = 0;
  final double _collapsedBottomSheetBottomPosition = -250;
  final double _completeCollapsedBottomSheetBottomPosition = -330;
  final DiscoverDataModel1? discoverDataModel1;

  const DiscoverDetailScreen1({Key? key, this.discoverDataModel1})
      : super(key: key);

  @override
  _DiscoverDetailScreen1State createState() => _DiscoverDetailScreen1State();
}

class _DiscoverDetailScreen1State extends State<DiscoverDetailScreen1>
    with AfterLayoutMixin<DiscoverDetailScreen1> {
  double _bottomSheetBottomPosition = -330;
  bool isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    var _backButton = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 10.0),
          child: IconButton(
            iconSize: 27,
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white.withOpacity(0.8),
            onPressed: () {
              setState(() {
                _bottomSheetBottomPosition =
                    widget._completeCollapsedBottomSheetBottomPosition;
              });
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );

    var _foodImage = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Hero(
              tag: "name-${widget.discoverDataModel1!.title}",
              child: Material(
                  color: Colors.transparent,
                  child: Center(
                      child: Container(
                          child: Text(
                    widget.discoverDataModel1!.title!,
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                        fontSize: 25.0,
                        color: Colors.white),
                  ))))),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Hero(
              tag: "image-${widget.discoverDataModel1!.title}",
              child: Center(
                  child: Stack(children: [
                Center(
                    child: Image.asset(widget.discoverDataModel1!.image!,
                        height: 280.0)),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45.0, top: 10.0),
                    child: Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:
                              BorderRadius.all(Radius.circular(40.0))),
                      child: Center(
                        child: Text(
                          "\$15",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 19.0),
                        ),
                      ),
                    ),
                  ),
                )
              ]))),
        ),
      ],
    );

    var _informationFood = Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(children: [
            Container(
              height: 52.0,
              width: 52.0,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Center(
                child: Icon(
                  Icons.room_service,
                  color: Colors.white,
                  size: 26.0,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "09",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "Serving",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w300),
            )
          ]),
          Column(children: [
            Container(
              height: 52.0,
              width: 52.0,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Center(
                child: Icon(
                  Icons.shutter_speed,
                  color: Colors.white,
                  size: 26.0,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "15",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "Minutes",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w300),
            )
          ]),
        ],
      ),
    );

    var _nutritionFact = AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.decelerate,
      bottom: _bottomSheetBottomPosition,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: _onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 42),
                      height: 80,
                      child: Text(
                        "Nutrition Fact",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w700,
                            fontSize: 21.5,
                            color: Colors.black87),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Container(
                      height: 35.0,
                      width: 35.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          color: Color(0xFFFF975D)),
                      child: Center(
                        child: Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: _clipsWidget(),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ///
          ///  Gradient background
          ///
          Hero(
            tag: "background-${widget.discoverDataModel1!.title}",
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: widget.discoverDataModel1!.colors!,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
          ),

          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 40),
                _backButton,
                _foodImage,
                _informationFood
              ],
            ),
          ),
          _nutritionFact
        ],
      ),
    );
  }

  Widget _clipsWidget() {
    return Container(
      height: 240,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "40",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 35.0,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "kkal",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 17.0,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 6),
                Column(
                  children: <Widget>[
                    Text(
                      "334",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 35.0,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "protein",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 17.0,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 6),
                Column(
                  children: <Widget>[
                    Text(
                      "12",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 35.0,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "orders",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 17.0,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 140.0,
                  child: Center(
                    child: Text(
                      "Add To Bag",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: Colors.black12.withOpacity(0.25),
                            spreadRadius: 5.0)
                      ]),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 9),
                Container(
                  height: 50.0,
                  width: 140.0,
                  child: Center(
                    child: Text(
                      "Quick Order",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFFFF975D),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: Color(0xFFFF975D).withOpacity(0.4),
                            spreadRadius: 5.0)
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget roundedContainer(Color color) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }

  _onTap() {
    setState(() {
      _bottomSheetBottomPosition = isCollapsed
          ? widget._expandedBottomSheetBottomPosition
          : widget._collapsedBottomSheetBottomPosition;
      isCollapsed = !isCollapsed;
    });
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        isCollapsed = true;
        _bottomSheetBottomPosition = widget._collapsedBottomSheetBottomPosition;
      });
    });
  }
}
