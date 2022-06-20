import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FoodDetailT4 extends StatefulWidget {
  String? image, title, price, location, id;
  double? ratting;
  FoodDetailT4(
      {this.image,
      this.title,
      this.price,
      this.location,
      this.id,
      this.ratting});

  @override
  _FoodDetailT4State createState() => _FoodDetailT4State();
}

class _FoodDetailT4State extends State<FoodDetailT4> {
  final Set<Marker> _markers = {};
  final LatLng _currentPosition = LatLng(40.7078523, -74.008981);

  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId("40.7078523, -74.008981"),
        position: _currentPosition,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    var _description = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
          child: Text(
            "Description",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 0.0, left: 20.0, right: 20.0, bottom: 50.0),
          child: Text(
            "Located in the historic Salt District atop Lodi Hill, Red Penny offers an eclectic lunch and dinner menu that reflects the cultural traditions of the two owners: Peruvian recipes handed down to Maria Gonzalez-Perez, and American country classics from co-owner Betsy Field’s family farm in Monroe.",
            style: TextStyle(
                fontFamily: "Sofia",
                color: Colors.black54,
                fontSize: 16.0,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );

    var _ratting = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
          child: Text(
            "Ratting",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: <Widget>[
              Text(
                "Location",
                style: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.black54,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 20.0,
              ),
              new LinearPercentIndicator(
                width: _width - 135,
                lineHeight: 9.0,
                percent: 0.9,
                progressColor: Color(0xFFfd4040),
                animation: true,
                backgroundColor: Color(0xFFDADBDF),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 13.0),
          child: Row(
            children: <Widget>[
              Text(
                "Cleaning",
                style: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.black54,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 17.0,
              ),
              new LinearPercentIndicator(
                width: _width - 135,
                lineHeight: 9.0,
                percent: 0.75,
                progressColor: Color(0xFFfd4040),
                animation: true,
                backgroundColor: Color(0xFFDADBDF),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 13.0),
          child: Row(
            children: <Widget>[
              Text(
                "Service",
                style: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.black54,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 28.0,
              ),
              new LinearPercentIndicator(
                width: _width - 135,
                lineHeight: 9.0,
                percent: 0.8,
                progressColor: Color(0xFFfd4040),
                animation: true,
                backgroundColor: Color(0xFFDADBDF),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 13.0),
          child: Row(
            children: <Widget>[
              Text(
                "Price",
                style: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.black54,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 45.0,
              ),
              new LinearPercentIndicator(
                width: _width - 135,
                lineHeight: 9.0,
                percent: 0.95,
                progressColor: Color(0xFFfd4040),
                animation: true,
                backgroundColor: Color(0xFFDADBDF),
              ),
            ],
          ),
        ),
      ],
    );

    var _location = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 50.0, left: 20.0, right: 20.0, bottom: 10.0),
          child: Text(
            "Location",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Stack(
            children: <Widget>[
              Container(
                height: 190.0,
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(40.7078523, -74.008981),
                    zoom: 13.0,
                  ),
                  markers: _markers,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 135.0, right: 60.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      //  Navigator.of(context).push(PageRouteBuilder(
                      //    pageBuilder: (_, __, ___) => maps()));
                    },
                    child: Container(
                      height: 35.0,
                      width: 95.0,
                      decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.5),
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      child: Center(
                        child: Text("See Map",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Sofia")),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );

    var _reviews = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 50.0, left: 20.0, right: 20.0, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Reviews",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.justify,
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "See More",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Color(0xFFfd4040),
                        fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ),
        reviewList(
          image: "assets/Template2/profile.png",
          name: "Abella Ayob",
          time: "21:45",
        ),
      ],
    );

    var _photoVar = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 30.0, left: 20.0, right: 20.0, bottom: 10.0),
          child: Text(
            "Photo",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.justify,
          ),
        ),
        Container(
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              _photo("assets/image/image_recipe/recipe1.jpg", "2a31sd2ds",
                  context),
              _photo(
                  "assets/image/image_recipe/recipe2.jpg", "dsa231", context),
              _photo(
                  "assets/image/image_recipe/recipe3.jpg", "321sda", context),
              _photo(
                  "assets/image/image_recipe/recipe4.jpg", "321dsa", context),
              _photo(
                  "assets/image/image_recipe/recipe5.png", "321dsa", context),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
      ],
    );

    var _button = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  gradient: LinearGradient(
                      colors: [const Color(0xFFfd4040), Colors.orangeAccent],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp)),
              child: Center(
                child: Text(
                  "Buy Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.0,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            /// AppBar
            SliverPersistentHeader(
              delegate: MySliverAppBar(
                  expandedHeight: _height - 30.0,
                  img: widget.image,
                  id: widget.id,
                  title: widget.title,
                  price: widget.price,
                  location: widget.location,
                  ratting: widget.ratting),
              pinned: true,
            ),

            SliverToBoxAdapter(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  /// Description
                  _description,

                  /// Ratting
                  _ratting,

                  /// Location
                  _location,

                  /// Reviews
                  _reviews,

                  /// Photo
                  _photoVar,

                  /// Button
                  _button,
                ])),
          ],
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  String? img, id, title, price, location;

  double? ratting;

  MySliverAppBar(
      {required this.expandedHeight,
      this.img,
      this.id,
      this.title,
      this.price,
      this.location,
      this.ratting});

  var _txtStyleTitle = TextStyle(
    color: Colors.black54,
    fontFamily: "Sofia",
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
  );

  var _txtStyleSub = TextStyle(
    color: Colors.black26,
    fontFamily: "Sofia",
    fontSize: 12.5,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.clip,
      children: [
        Container(
          height: 50.0,
          width: double.infinity,
          color: Colors.white,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Foodie",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Sofia",
              fontWeight: FontWeight.w700,
              fontSize: (expandedHeight / 40) - (shrinkOffset / 40) + 18,
            ),
          ),
        ),
        Opacity(
          opacity: (1 - shrinkOffset / expandedHeight),
          child: Hero(
            tag: 'hero-tag-${id}',
            child: Material(
              child: new DecoratedBox(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: new AssetImage(img!),
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 620.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(0.0, 1.0),
                      stops: [0.0, 1.0],
                      colors: <Color>[
                        Color(0x00FFFFFF),
                        Color(0xFFFFFFFF),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, right: 20.0, left: 20.0, bottom: 40.0),
              child: Container(
                height: 170.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white.withOpacity(0.85)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    width: 205.0,
                                    child: Text(
                                      title!,
                                      style: _txtStyleTitle.copyWith(
                                          fontSize: 27.0),
                                      overflow: TextOverflow.clip,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(right: 13.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "\$" + price!,
                                        style: TextStyle(
                                            fontSize: 25.0,
                                            color: Color(0xFFfd4040),
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Sofia"),
                                      ),
                                      Text("/per serving",
                                          style: _txtStyleSub.copyWith(
                                              fontSize: 11.0))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          color: Color(0xFFfd4040),
                                          size: 22.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xFFfd4040),
                                          size: 22.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xFFfd4040),
                                          size: 22.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xFFfd4040),
                                          size: 22.0,
                                        ),
                                        Icon(
                                          Icons.star_half,
                                          color: Color(0xFFfd4040),
                                          size: 22.0,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Icon(
                                            Icons.location_on,
                                            size: 14.0,
                                            color: Colors.black26,
                                          ),
                                          Text(
                                            "New York City",
                                            style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: 14.5,
                                                fontFamily: "Sofia",
                                                fontWeight: FontWeight.w400),
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //  LikeButton(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Container(
                          height: 35.0,
                          width: 35.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                            color: Colors.white70,
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          )),
                    ))),
            SizedBox(
              width: 36.0,
            )
          ],
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

Widget _photo(String image, id, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (BuildContext context, _, __) {
                    return new Material(
                      color: Colors.black54,
                      child: Container(
                        padding: EdgeInsets.all(30.0),
                        child: InkWell(
                          child: Hero(
                              tag: "hero-grid-${id}",
                              child: Image.asset(
                                image,
                                width: 300.0,
                                height: 300.0,
                                alignment: Alignment.center,
                                fit: BoxFit.contain,
                              )),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    );
                  },
                  transitionDuration: Duration(milliseconds: 500)));
            },
            child: Container(
              height: 130.0,
              width: 130.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.black12.withOpacity(0.1),
                        spreadRadius: 2.0)
                  ]),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
      ],
    ),
  );
}

Widget _relatedPost(String image, title, location, ratting) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 110.0,
          width: 180.0,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5.0,
                    color: Colors.black12.withOpacity(0.1),
                    spreadRadius: 2.0)
              ]),
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
              color: Colors.black87),
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
              color: Colors.black12,
            ),
            Text(
              location,
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                  color: Colors.black26),
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
                    fontWeight: FontWeight.w700,
                    fontFamily: "Sofia",
                    fontSize: 13.0),
              ),
            ),
            SizedBox(
              width: 35.0,
            ),
          ],
        ),
      ],
    ),
  );
}

class reviewList extends StatelessWidget {
  String? image, name, time;
  reviewList({this.image, this.name, this.time});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, bottom: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image!), fit: BoxFit.cover),
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(50.0))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                              color: Colors.black12.withOpacity(0.05))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(name!,
                              style: TextStyle(
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w700,
                                fontSize: 17.0,
                                color: Colors.black,
                              )),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                              width: _width - 140.0,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.5,
                                    color: Colors.black45),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.justify,
                              ))
                        ],
                      ),
                    ),
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
