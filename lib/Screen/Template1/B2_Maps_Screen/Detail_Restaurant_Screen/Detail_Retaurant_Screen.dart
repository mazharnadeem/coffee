import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../../../../Library/Carousel/CarouselPro.dart';
import '../../../../Library/Ratting_Bar/ratting.dart';

class DetailRestaurantScreenT1 extends StatefulWidget {
  String? id, image, title, address;
  DetailRestaurantScreenT1({this.id, this.image, this.title, this.address});

  @override
  _DetailRestaurantScreenT1State createState() =>
      _DetailRestaurantScreenT1State();
}

class _DetailRestaurantScreenT1State extends State<DetailRestaurantScreenT1> {
  @override
  double rating = 3.5;
  final Set<Marker> _markers = {};
  final LatLng _currentPosition = LatLng(40.7078523, -74.008981);
  late GoogleMapController _controller;
  late String _mapStyle;

  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId("40.7078523, -74.008981"),
        position: _currentPosition,
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
      ),
    );
    rootBundle.loadString('assets/Template1/map_style.txt').then((string) {
      _mapStyle = string;
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    var _icon = Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            _line(),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child:
                        _infoCircleIcon("assets/icon/wifi.png", "Free Wifi")),
                Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: _infoCircleIcon(
                        "assets/icon/rattingPlus.png", "Photo")),
                Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: _infoCircleIcon("assets/icon/report.png", "Report")),
                Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: _infoCircleIcon(
                        "assets/icon/bookmark.png", "Bookmark")),
                Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: _infoCircleIcon("assets/icon/share.png", "Share")),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            _line(),
          ],
        ),
      ),
    );

    var _desc = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
          child: Text(
            "About",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 0.0, left: 20.0, right: 20.0, bottom: 50.0),
          child: Text(
            "Spend a unforgettable holiday in the enchanting surroundings of the town of Cisternino (reachable from the near airports of Bari and Brindisi). \n\nTrullo Edera offers a heaven of peace and tranquillity, set in an elevated position with a stunning view. It's the perfect place if you like nature. You can stay under an olive tree reading a good book, you can have a walk in the small country streets or go to the nearest beaches.",
            style: TextStyle(
                fontFamily: "Sofia",
                color: Colors.white38,
                fontSize: 16.0,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.justify,
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
              top: 0.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: Text(
            "Location",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.justify,
          ),
        ),
        Container(
          height: 190.0,
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(40.7078523, -74.008981),
              zoom: 13.0,
            ),
            markers: _markers,
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
              _controller.setMapStyle(_mapStyle);
            },
          ),
        ),
      ],
    );

    var _gallery = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 70.0, left: 20.0, right: 20.0, bottom: 10.0),
          child: Text(
            "Gallery",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.justify,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: _width / 3,
                  width: _width / 3.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          "https://images.pexels.com/photos/1449775/pexels-photo-1449775.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                          errorListener: () => new Icon(Icons.error),
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Container(
                    height: _width / 3,
                    width: _width / 3.05,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            "https://images.pexels.com/photos/6267/menu-restaurant-vintage-table.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                            errorListener: () => new Icon(Icons.error),
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  height: _width / 3,
                  width: _width / 3.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          "https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                          errorListener: () => new Icon(Icons.error),
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  height: _width / 3,
                  width: _width / 3.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          "https://images.pexels.com/photos/2290740/pexels-photo-2290740.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                          errorListener: () => new Icon(Icons.error),
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    height: _width / 3,
                    width: _width / 3.05,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            "https://images.pexels.com/photos/1581384/pexels-photo-1581384.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                            errorListener: () => new Icon(Icons.error),
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  height: _width / 3,
                  width: _width / 3.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          "https://images.pexels.com/photos/1449773/pexels-photo-1449773.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                          errorListener: () => new Icon(Icons.error),
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: InkWell(
                    onTap: () {
                      //     Navigator.of(context).push(PageRouteBuilder(
                      //       pageBuilder: (_, __, ___) => new gallery()));
                    },
                    child: Container(
                      color: Colors.black54,
                      child: Center(
                        child: Text("See More",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );

    var _ratting = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            width: 600.0,
            decoration: BoxDecoration(color: Color(0xFF1E2026), boxShadow: [
              BoxShadow(
                color: Color(0xFF656565).withOpacity(0.15),
                blurRadius: 1.0,
                spreadRadius: 0.2,
              )
            ]),
            child: Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Reviews",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontSize: 20.0,
                            color: Colors.white.withOpacity(0.8),
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 15.0, bottom: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              child: Padding(
                                  padding: EdgeInsets.only(top: 2.0),
                                  child: Text(
                                    "View All",
                                    style: TextStyle(
                                        color: Colors.white38, fontSize: 14.0),
                                  )),
                              onTap: () {
                                //   Navigator.of(context).push(PageRouteBuilder(
                                //     pageBuilder: (_, __, ___) =>
                                //       reviewDetail1()));
                              },
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 15.0, top: 2.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 18.0,
                                color: Colors.white38,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            StarRating(
                              size: 25.0,
                              starCount: 5,
                              rating: 4.0,
                              color: Colors.yellow,
                              borderColor: Colors.yellow,
                              onRatingChanged: (double rating) {},
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              "8 Reviews",
                              style: TextStyle(
                                  fontFamily: "Sofia", color: Colors.white70),
                            )
                          ]),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 0.0, right: 20.0, top: 15.0, bottom: 7.0),
                    child: _line(),
                  ),
                  _buildRating("18 Nov 2018",
                      "Item Delivered in good condition. I will recommended to other buyer.",
                      (rating) {
                    setState(() {
                      this.rating = rating;
                    });
                  }, "https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 0.0, right: 20.0, top: 15.0, bottom: 7.0),
                    child: _line(),
                  ),
                  _buildRating("18 Nov 2018",
                      "Item Delivered in good condition. I will recommended to other buyer.",
                      (rating) {
                    setState(() {
                      this.rating = rating;
                    });
                  }, "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 0.0, right: 20.0, top: 15.0, bottom: 7.0),
                    child: _line(),
                  ),
                  _buildRating("18 Nov 2018",
                      "Item Delivered in good condition. I will recommended to other buyer.",
                      (rating) {
                    setState(() {
                      this.rating = rating;
                    });
                  }, "https://images.pexels.com/photos/1853712/pexels-photo-1853712.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                  Padding(padding: EdgeInsets.only(bottom: 20.0)),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    var _relatedPostVar = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Related Post",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 20.0,
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 16.0,
                      color: Colors.white38,
                      fontWeight: FontWeight.w300),
                ),
              ]),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              _relatedPost(
                  "https://images.pexels.com/photos/1199957/pexels-photo-1199957.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                  "The Cheeses Guide",
                  "87 Botsford",
                  "4,3"),
              _relatedPost(
                  "https://images.pexels.com/photos/1199959/pexels-photo-1199959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                  "Garage Bar Seafood",
                  "Gilison London",
                  "4,1"),
              _relatedPost(
                  "https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                  "Spagheti Kilimanjaro",
                  "Netherland",
                  "4,2"),
              _relatedPost(
                  "https://images.pexels.com/photos/2098116/pexels-photo-2098116.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                  "Gangtok Vegetable",
                  "Nepal",
                  "4,7"),
              _relatedPost(
                  "https://images.pexels.com/photos/2067473/pexels-photo-2067473.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                  "Soup Caikaki",
                  "Orlando",
                  "4,5"),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
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
                      colors: [
                        const Color(0xFFFF975D),
                        Color(0xFFFEE140),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp)),
              child: Center(
                child: Text(
                  "Order Now",
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

    var _headerSlider = Stack(
      children: <Widget>[
        Container(
          height: 300.0,
          child: Hero(
            tag: "hero-grid-${widget.id}",
            child: Material(
              child: new Carousel(
                dotColor: Colors.white60,
                dotIncreaseSize: 1.7,
                dotBgColor: Colors.transparent,
                autoplay: false,
                boxFit: BoxFit.cover,
                images: [
                  NetworkImage(widget.image!),
                  CachedNetworkImageProvider(
                    "https://images.pexels.com/photos/1449775/pexels-photo-1449775.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                    errorListener: () => new Icon(Icons.error),
                  ),
                  CachedNetworkImageProvider(
                    "https://images.pexels.com/photos/6267/menu-restaurant-vintage-table.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    errorListener: () => new Icon(Icons.error),
                  ),
                ],
                onImageChange: (int, s) {},
                onImageTap: (int) {},
                overlayShadowColors: Colors.yellow,
                radius: Radius.circular(1.0),
              ),
            ),
          ),
        ),
      ],
    );

    var _title = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 215.0),
          child: Text(
            widget.title!,
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 24.5,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            widget.address!,
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 16.5,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16.0,
                  ),
                  Icon(
                    Icons.star_half,
                    color: Colors.yellow,
                    size: 16.0,
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    "4.6",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontSize: 14.0,
                        color: Colors.white54,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    " (48 Reviews)",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontSize: 14.0,
                        color: Colors.white54,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Text(
                "\$20.00",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 23.5,
                    color: Color(0xFFFF975D),
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Color(0xFF1E2026),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            /// Header image slider
            _headerSlider,

            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _title,

                  /// For icon row
                  _icon,

                  /// Desc
                  _desc,

                  /// Location
                  _location,

                  /// Gallery
                  _gallery,

                  /// Ratting
                  _ratting,

                  ///Related Post
                  _relatedPostVar,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _photo(String image) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 110.0,
          width: 140.0,
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
              image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    image,
                    errorListener: () => new Icon(Icons.error),
                  ),
                  fit: BoxFit.cover),
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
              color: Colors.white.withOpacity(0.9)),
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
              size: 16.0,
              color: Colors.white54,
            ),
            Text(
              location,
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w400,
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
              size: 16.0,
              color: Colors.yellow,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text(
                ratting,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Sofia",
                    color: Colors.white54,
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

Widget _infoCircleIcon(String image, title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Center(
        child: Image.asset(
          image,
          height: 22.0,
          color: Colors.white60,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 9.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w400,
                  color: Colors.white70,
                  fontSize: 11.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _line() {
  return Container(
    height: 0.9,
    width: double.infinity,
    color: Colors.white10,
  );
}

Widget _buildRating(
    String date, String details, Function changeRating, String image) {
  return ListTile(
    leading: Container(
      height: 45.0,
      width: 45.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: CachedNetworkImageProvider(
                image,
                errorListener: () => new Icon(Icons.error),
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(150.0))),
    ),
    title: Row(
      children: <Widget>[
        StarRating(
          size: 20.0,
          rating: 3.5,
          starCount: 5,
          color: Colors.yellow,
          onRatingChanged: changeRating as void Function(double),
          borderColor: Colors.yellow,
        ),
        SizedBox(width: 8.0),
        Text(
          date,
          style: TextStyle(
              fontSize: 12.0,
              color: Colors.white.withOpacity(0.8),
              fontFamily: "Sofia"),
        )
      ],
    ),
    subtitle: Text(
      details,
      style: TextStyle(
          fontFamily: "Sofia",
          fontWeight: FontWeight.w300,
          color: Colors.white.withOpacity(0.5)),
    ),
  );
}
