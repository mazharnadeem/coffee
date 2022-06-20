import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Data_Model/categoryDetail.dart';

import '../../../../Library/Carousel/CarouselPro.dart';

class CategoryScreenT1 extends StatefulWidget {
  String? title;
  CategoryScreenT1({this.title});

  @override
  _CategoryScreenT1State createState({title}) => _CategoryScreenT1State();
}

class _CategoryScreenT1State extends State<CategoryScreenT1> {
  var _recommended = Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(
        height: 50.0,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 22.0),
        child: Text(
          "Recommended",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Sofia",
              fontSize: 20.0,
              fontWeight: FontWeight.w700),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 5.0),
        child: Container(
          child: ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemBuilder: (ctx, index) {
              return cardList(categoryArray[index]);
            },
            itemCount: categoryArray.length,
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    var _appBar = PreferredSize(
      preferredSize: Size.fromHeight(45.0),
      child: AppBar(
        backgroundColor: Color(0xFF1E2026),
        brightness: Brightness.dark,
        title: Text(
          widget.title!,
          style: TextStyle(color: Colors.white, fontFamily: "Sofia"),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );

    var _imageSlider = Container(
      height: 292.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        dotColor: Colors.white.withOpacity(0.8),
        dotSize: 5.5,
        dotSpacing: 16.0,
        dotBgColor: Colors.transparent,
        showIndicator: true,
        overlayShadow: true,
        overlayShadowColors: Color(0xFF1E2026).withOpacity(0.1),
        overlayShadowSize: 0.9,
        images: [
          AssetImage("assets/Template1/banner/7.jpg"),
          AssetImage("assets/Template1/banner/4.jpg"),
          AssetImage("assets/Template1/banner/5.jpg"),
          AssetImage("assets/Template1/banner/6.jpg"),
        ],
        onImageChange: (int, s) {},
        onImageTap: (int) {},
        radius: Radius.circular(1),
      ),
    );

    var _recommendedFood = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 30.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Recommended Food",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 18.5,
                color: Colors.white,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 5.0),
        Container(
          height: 320.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              _card("assets/Template1/banner/3.jpg", "Steak Noodles ",
                  "Tanzania", "4,3", "dsadsa2", context),
              _card("assets/Template1/banner/4.jpg", "Burger Cheese",
                  "New York", "4,1", "gew321", context),
              _card("assets/Template1/banner/1.jpg", "Mount Kilimanjaro",
                  "Nepal", "4,2", "213asd", context),
              _card("assets/Template1/banner/2.jpg", "Steak Pepper", "Chicago",
                  "4,7", "gfd23", context),
              _card("assets/Template1/banner/5.jpg", "Spicy Soup", "New York",
                  "4,5", "cds321", context),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: _appBar,
      backgroundColor: Color(0xFF1E2026),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _imageSlider,
            _recommendedFood,
            _recommended,
          ],
        ),
      ),
    );
  }
}

class cardList extends StatelessWidget {
  @override
  var _txtStyleTitle = TextStyle(
    color: Colors.white,
    fontFamily: "Sofia",
    fontSize: 17.0,
    fontWeight: FontWeight.w800,
  );

  var _txtStyleSub = TextStyle(
    color: Colors.white,
    fontFamily: "Sofia",
    fontSize: 12.5,
    fontWeight: FontWeight.w600,
  );

  category categoryData;

  cardList(this.categoryData);

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 250.0,
          decoration: BoxDecoration(
              color: Color(0xFF23252E),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.white12.withOpacity(0.1),
                    blurRadius: 3.0,
                    spreadRadius: 1.0)
              ]),
          child: Column(children: [
            Hero(
              tag: 'hero-tag-${categoryData.id}',
              child: Material(
                color: Color(0xFF1E2026),
                child: Container(
                  height: 165.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0)),
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          categoryData.image!,
                          errorListener: () => new Icon(Icons.error),
                        ),
                        fit: BoxFit.cover),
                  ),
                  alignment: Alignment.topRight,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: 220.0,
                            child: Text(
                              categoryData.title!,
                              style: _txtStyleTitle,
                              overflow: TextOverflow.ellipsis,
                            )),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Row(
                          children: <Widget>[
                            Text(
                              "(" + categoryData.ratting.toString() + ")",
                              style: _txtStyleSub,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.9),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                size: 16.0,
                                color: Colors.white,
                              ),
                              Padding(padding: EdgeInsets.only(top: 3.0)),
                              Text(categoryData.location!, style: _txtStyleSub)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 13.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          categoryData.price!,
                          style: TextStyle(
                              fontSize: 24.0,
                              color: Color(0xFFFF975D),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Gotik"),
                        ),
                        Text("per night",
                            style: _txtStyleSub.copyWith(fontSize: 11.0))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

Widget _card(String image, title, location, ratting, id, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Hero(
            tag: 'hero-tag-${id}',
            child: Material(
              color: Color(0xFF1E2026),
              child: Container(
                height: 220.0,
                width: 160.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                    color: Colors.white12,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.0,
                          color: Colors.white12.withOpacity(0.1),
                          spreadRadius: 2.0)
                    ]),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: "Sofia",
              fontWeight: FontWeight.w600,
              fontSize: 17.0,
              color: Colors.white),
        ),
        SizedBox(
          height: 2.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.location_on,
              size: 18.0,
              color: Colors.white12,
            ),
            Text(
              location,
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                  color: Colors.white38),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.star,
              size: 18.0,
              color: Colors.yellow,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text(
                ratting,
                style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Sofia",
                    fontSize: 13.0),
              ),
            ),
            SizedBox(
              width: 35.0,
            ),
            Container(
              height: 27.0,
              width: 82.0,
              decoration: BoxDecoration(
                  color: Color(0xFFFF975D),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Center(
                child: Text("Discount 15%",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 10.0)),
              ),
            )
          ],
        ),
      ],
    ),
  );
}
