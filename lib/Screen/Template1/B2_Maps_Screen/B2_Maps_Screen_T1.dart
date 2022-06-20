import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Data_Model/Maps_Model_Data.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/services.dart' show rootBundle;
import 'Detail_Restaurant_Screen/Detail_Retaurant_Screen.dart';

class MapsScreenT1 extends StatefulWidget {
  MapsScreenT1({Key? key}) : super(key: key);

  @override
  _MapsScreenT1State createState() => _MapsScreenT1State();
}

class _MapsScreenT1State extends State<MapsScreenT1> {
  late GoogleMapController _controller;
  BitmapDescriptor? customIcon;
  bool isMapCreated = false;
  late String _mapStyle;
  List<Marker> allMarkers = [];

  PageController? _pageController;

  int? prevPage;

  createMarker(context) {
    if (customIcon == null) {
      ImageConfiguration configuration = createLocalImageConfiguration(context);
      BitmapDescriptor.fromAssetImage(
              configuration, 'assets/Template1/image/marker.png')
          .then((icon) {
        setState(() {
          customIcon = icon;
        });
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setCustomMapPin();
    rootBundle.loadString('assets/Template1/map_style.txt').then((string) {
      _mapStyle = string;
    });
    coffeeShops.forEach((element) {
      allMarkers.add(Marker(
          icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueOrange,
          ),
          markerId: MarkerId(element.shopName!),
          draggable: false,
          infoWindow:
              InfoWindow(title: element.shopName!, snippet: element.address!),
          position: element.locationCoords!));
    });
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8)
      ..addListener(_onScroll);
  }

  void setCustomMapPin() async {
    customIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'assets/Template1/image/marker.png');
  }

  void _onScroll() {
    if (_pageController!.page!.toInt() != prevPage) {
      prevPage = _pageController!.page!.toInt();
      moveCamera();
    }
  }

  Future<String> getJsonFile(String path) async {
    return await rootBundle.loadString(path);
  }

  void setMapStyle(String mapStyle) {
    _controller.setMapStyle(mapStyle);
  }

  _restaurantList(index) {
    String? _id = coffeeShops[index].id;
    String _image = coffeeShops[index].thumbNail!;
    String _title = coffeeShops[index].shopName!;
    String _address = coffeeShops[index].address!;
    return AnimatedBuilder(
      animation: _pageController!,
      builder: (BuildContext context, Widget? widget) {
        double value = 1;
        if (_pageController!.position.haveDimensions) {
          value = _pageController!.page! - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 125.0,
            width: Curves.easeInOut.transform(value) * 350.0,
            child: widget,
          ),
        );
      },
      child: Padding(
        padding:
            const EdgeInsets.only(left: 0.0, right: 8.0, top: 5.0, bottom: 5.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (_, __, ___) => new DetailRestaurantScreenT1(
                      image: _image,
                      address: _address,
                      id: _id,
                      title: _title,
                    ),
                transitionDuration: Duration(milliseconds: 1000),
                transitionsBuilder:
                    (_, Animation<double> animation, __, Widget child) {
                  return Opacity(
                    opacity: animation.value,
                    child: child,
                  );
                }));
          },
          child: Container(
            height: 140.0,
            width: 340.0,
            decoration: BoxDecoration(
                color: Color(0xFF1E2026),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                      color: Colors.black12.withOpacity(0.03))
                ]),
            child: Row(
              children: <Widget>[
                Hero(
                  tag: "hero-grid-${_id}",
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      height: 140.0,
                      width: 110.0,
                      decoration: BoxDecoration(
                          color: Color(0xFF1E2026),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0)),
                          image: DecorationImage(
                              image: NetworkImage(_image), fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: 150.0,
                          child: Text(
                            _title,
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.0),
                            overflow: TextOverflow.ellipsis,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 14.0,
                              color: Colors.white,
                            ),
                            Container(
                              width: 140.0,
                              child: Text(
                                _address,
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14.5,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w400),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellowAccent,
                                      size: 21.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellowAccent,
                                      size: 21.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellowAccent,
                                      size: 21.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellowAccent,
                                      size: 21.0,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.yellowAccent,
                                      size: 21.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    createMarker(context);
    if (isMapCreated) {
      getJsonFile("assets/nightmode.json").then(setMapStyle);
    }
    return Scaffold(
        backgroundColor: Color(0xFF1E2026),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                    target: LatLng(40.7237765, -74.017617), zoom: 13.0),

                // markers: markers,
                onTap: (pos) {
                  print(pos);
                  Marker m = Marker(
                      markerId: MarkerId('1'),
                      icon: customIcon!,
                      position: pos);
                  setState(() {
                    allMarkers.add(m);
                  });
                },
                markers: Set.from(allMarkers),
                onMapCreated: (GoogleMapController controller) {
                  _controller = controller;
                  _controller.setMapStyle(_mapStyle);
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: coffeeShops.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _restaurantList(index);
                  },
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    height: 75.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF1E2026),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 30.0),
                      child: Center(
                        child: Text(
                          "Locations",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              letterSpacing: 1.4),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: <Color>[
                        Color(0xFF1E2026).withOpacity(0.1),
                        Color(0xFF1E2026).withOpacity(0.6),
                        Color(0xFF1E2026),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  moveCamera() {
    _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: coffeeShops[_pageController!.page!.toInt()].locationCoords!,
        zoom: 14.0,
        bearing: 45.0,
        tilt: 45.0)));
  }
}
