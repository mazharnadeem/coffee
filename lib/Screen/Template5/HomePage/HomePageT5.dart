import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template2/B3_Category_Screen/Detail_Category/Restaurant_Screen.dart';
import 'package:provider/provider.dart';

import 'Detail_Food/Detail_Food_T5.dart';
import 'Detail_Header_Screen/Detail_Header_Screen.dart';
import 'Drawer/DrawerScreen.dart';

class MyHomePageT5 extends StatefulWidget {
  @override
  _MyHomePageT5State createState() => new _MyHomePageT5State();
}

class _MyHomePageT5State extends State<MyHomePageT5>
    with TickerProviderStateMixin {
  MenuController? menuController;

  @override
  void initState() {
    super.initState();

    menuController = new MenuController(
      vsync: this,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    menuController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => menuController,
      child: HomePageT5(
        menuScreen: MenuScreen(),
        contentScreen: Layout(
            contentBuilder: (cc) => Container(
                  color: Colors.grey[200],
                  child: Container(
                    color: Colors.grey[200],
                  ),
                )),
      ),
    );
  }
}

class HomePageT5 extends StatefulWidget {
  final Widget? menuScreen;
  final Layout? contentScreen;

  HomePageT5({
    this.menuScreen,
    this.contentScreen,
  });

  @override
  _HomePageT5State createState() => new _HomePageT5State();
}

class _HomePageT5State extends State<HomePageT5> with TickerProviderStateMixin {
  Curve scaleDownCurve = new Interval(0.0, 0.3, curve: Curves.easeOut);
  Curve scaleUpCurve = new Interval(0.0, 1.0, curve: Curves.easeOut);
  Curve slideOutCurve = new Interval(0.0, 1.0, curve: Curves.easeOut);
  Curve slideInCurve = new Interval(0.0, 1.0, curve: Curves.easeOut);

  createContentDisplay() {
    return zoomAndSlideContent(new Container(
      child: new Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text("Foodie",
              style: TextStyle(
                  fontFamily: "Sofia",
                  letterSpacing: 1.1,
                  fontWeight: FontWeight.w700)),
          leading: new IconButton(
              icon: Icon(
                EvaIcons.menu2Outline,
                color: Colors.black,
              ),
              onPressed: () {
                Provider.of<MenuController>(context, listen: true).toggle();
              }),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: InkWell(onTap: () {}, child: Icon(EvaIcons.personOutline)),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Container(
                  height: 270.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      cardCountry(
                        colorTop: Color(0xFFF07DA4),
                        colorBottom: Color(0xFFF5AE87),
                        image: "assets/icon/breakfast.png",
                        title: "Order Food Faster",
                      ),
                      cardCountry(
                          colorTop: Color(0xFF63CCD1),
                          colorBottom: Color(0xFF75E3AC),
                          image: "assets/icon/caffe.png",
                          title: "The Abundant Life Food"),
                      cardCountry(
                          colorTop: Color(0xFF9183FC),
                          colorBottom: Color(0xFFDB8EF6),
                          image: "assets/icon/dinner.png",
                          title: "Health Care"),
                      cardCountry(
                          colorTop: Color(0xFF56B4EE),
                          colorBottom: Color(0xFF59CCE1),
                          image: "assets/icon/healty.png",
                          title: "Food In Your Area"),
                      cardCountry(
                          colorTop: Color(0xFFF07DA4),
                          colorBottom: Color(0xFFF5AE87),
                          image: "assets/icon/Lunch.png",
                          title: "Make You Happy")
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 35.0, right: 20.0, left: 20.0),
                child: Text(
                  "Browse Categories",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.black.withOpacity(0.75),
                      fontWeight: FontWeight.w700,
                      fontSize: 17.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Container(
                  height: 130.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      categoryCard(
                        image: "assets/Template2/category/category7.jpg",
                        title: "Restaurant",
                        sizeFont: 20.0,
                      ),
                      categoryCard(
                        image: "assets/Template2/category/category5.jpg",
                        title: "Home Made",
                        sizeFont: 20.0,
                      ),
                      categoryCard(
                        image: "assets/Template2/category/category6.jpg",
                        title: "Street Food",
                        sizeFont: 20.0,
                      ),
                      categoryCard(
                        image: "assets/Template2/category/category3.jpg",
                        title: "Catering Service",
                        sizeFont: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, right: 20.0, left: 20.0),
                child: Text(
                  "Dinner",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.black.withOpacity(0.75),
                      fontWeight: FontWeight.w700,
                      fontSize: 17.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    itemCard(
                      image: "assets/image/image_recipe/recipe1.jpg",
                      id: "dsadsa",
                      calorie: 474,
                      price: 12.00,
                      title: "Cheeses Guide",
                    ),
                    itemCard(
                      image: "assets/image/image_recipe/recipe2.jpg",
                      id: "gfdw32",
                      calorie: 653,
                      price: 20.00,
                      title: "Garage Seafood",
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, right: 20.0, left: 20.0),
                child: Text(
                  "Nutrition",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.black.withOpacity(0.75),
                      fontWeight: FontWeight.w700,
                      fontSize: 17.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    itemCard(
                      image: "assets/image/image_recipe/recipe3.jpg",
                      id: "cxsad",
                      calorie: 953,
                      price: 25.00,
                      title: "Spagheti Kilimanjaro",
                    ),
                    itemCard(
                      image: "assets/image/image_recipe/recipe4.jpg",
                      id: "gfderw",
                      calorie: 462,
                      price: 16.00,
                      title: "Gangtok Vegetable",
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, right: 20.0, left: 20.0),
                child: Text(
                  "Popular",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.black.withOpacity(0.75),
                      fontWeight: FontWeight.w700,
                      fontSize: 17.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    itemCard(
                      image: "assets/image/image_recipe/recipe5.png",
                      id: "vcxsd2",
                      calorie: 865,
                      price: 18.00,
                      title: "Soup Caikaki",
                    ),
                    itemCard(
                      image: "assets/image/image_recipe/recipe6.png",
                      id: "bgfge",
                      calorie: 742,
                      price: 23.00,
                      title: "Seafood Fish",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  zoomAndSlideContent(Widget content) {
    var slidePercent, scalePercent;

    switch (Provider.of<MenuController>(context, listen: true).state) {
      case MenuState.closed:
        slidePercent = 0.0;
        scalePercent = 0.0;
        break;
      case MenuState.open:
        slidePercent = 1.0;
        scalePercent = 1.0;
        break;
      case MenuState.opening:
        slidePercent = slideOutCurve.transform(
            Provider.of<MenuController>(context, listen: true).percentOpen);
        scalePercent = scaleDownCurve.transform(
            Provider.of<MenuController>(context, listen: true).percentOpen);
        break;
      case MenuState.closing:
        slidePercent = slideInCurve.transform(
            Provider.of<MenuController>(context, listen: true).percentOpen);
        scalePercent = scaleUpCurve.transform(
            Provider.of<MenuController>(context, listen: true).percentOpen);
        break;
    }

    final slideAmount = 275.0 * slidePercent;
    final contentScale = 1.0 - (0.2 * scalePercent);
    final cornerRadius =
        16.0 * Provider.of<MenuController>(context, listen: true).percentOpen;

    return new Transform(
      transform: new Matrix4.translationValues(slideAmount, 0.0, 0.0)
        ..scale(contentScale, contentScale),
      alignment: Alignment.centerLeft,
      child: new Container(
        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Colors.black12,
              offset: const Offset(0.0, 5.0),
              blurRadius: 15.0,
              spreadRadius: 10.0,
            ),
          ],
        ),
        child: new ClipRRect(
            borderRadius: new BorderRadius.circular(cornerRadius),
            child: content),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Scaffold(
            body: widget.menuScreen,
          ),
        ),
        createContentDisplay()
      ],
    );
  }
}

class HomePageT5MenuController extends StatefulWidget {
  final HomePageT5Builder? builder;

  HomePageT5MenuController({
    this.builder,
  });

  @override
  HomePageT5MenuControllerState createState() {
    return new HomePageT5MenuControllerState();
  }
}

class HomePageT5MenuControllerState extends State<HomePageT5MenuController> {
  @override
  Widget build(BuildContext context) {
    return widget.builder!(
        context, Provider.of<MenuController>(context, listen: true));
  }
}

typedef Widget HomePageT5Builder(
    BuildContext context, MenuController menuController);

class Layout {
  final WidgetBuilder? contentBuilder;

  Layout({
    this.contentBuilder,
  });
}

class MenuController extends ChangeNotifier {
  final TickerProvider vsync;
  final AnimationController _animationController;
  MenuState state = MenuState.closed;

  MenuController({
    required this.vsync,
  }) : _animationController = new AnimationController(vsync: vsync) {
    _animationController
      ..duration = const Duration(milliseconds: 250)
      ..addListener(() {
        notifyListeners();
      })
      ..addStatusListener((AnimationStatus status) {
        switch (status) {
          case AnimationStatus.forward:
            state = MenuState.opening;
            break;
          case AnimationStatus.reverse:
            state = MenuState.closing;
            break;
          case AnimationStatus.completed:
            state = MenuState.open;
            break;
          case AnimationStatus.dismissed:
            state = MenuState.closed;
            break;
        }
        notifyListeners();
      });
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  get percentOpen {
    return _animationController.value;
  }

  open() {
    _animationController.forward();
  }

  close() {
    _animationController.reverse();
  }

  toggle() {
    if (state == MenuState.open) {
      close();
    } else if (state == MenuState.closed) {
      open();
    }
  }
}

enum MenuState {
  closed,
  opening,
  open,
  closing,
}

///
/// Create item card
///
class itemCard extends StatelessWidget {
  String? image, id, title;
  int? calorie;
  double? price;
  itemCard({this.image, this.id, this.title, this.calorie, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new DetailPageT5(
                        calory: calorie,
                        image: image,
                        price: price!.toInt(),
                        protein: 23,
                        title: title,
                        weight: 23,
                      )));
            },
            child: Container(
              height: 110.0,
              width: 160.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: Hero(
                tag: "image${image}",
                child: Material(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      image: DecorationImage(
                          image: AssetImage(image!), fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFABABAB).withOpacity(0.7),
                          blurRadius: 4.0,
                          spreadRadius: 3.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              title!,
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                calorie.toString() + "Cal",
                style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                    width: 65.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5AE87),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Center(
                        child: Text(
                      "\$" + price.toString(),
                      style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.white,
                      ),
                    ))),
              )
            ],
          )
        ],
      ),
    );
  }
}

class cardCountry extends StatelessWidget {
  Color? colorTop, colorBottom;
  String? image, title;
  cardCountry({this.colorTop, this.colorBottom, this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0, right: 6.0, bottom: 4.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => DetailHeaderScreen()));
        },
        child: Container(
          height: 230.0,
          width: 250.0,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 8.0, color: Colors.black12)],
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            gradient: LinearGradient(
                colors: [colorTop!, colorBottom!],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                child: Text(
                  title!,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0),
                child: Text(
                  "Simple and powerfull to use foodie apps",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      image!,
                      height: 100,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

///
/// Create item card
///
class categoryCard extends StatelessWidget {
  String? image, title;
  double? sizeFont;
  categoryCard({this.image, this.title, this.sizeFont});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => new restaurant(
                    title: title,
                  ),
              transitionDuration: Duration(milliseconds: 600),
              transitionsBuilder:
                  (_, Animation<double> animation, __, Widget child) {
                return Opacity(
                  opacity: animation.value,
                  child: child,
                );
              }));
        },
        child: Container(
          height: 65.0,
          width: 185.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: Material(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                image: DecorationImage(
                    image: AssetImage(image!), fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFABABAB).withOpacity(0.7),
                    blurRadius: 4.0,
                    spreadRadius: 3.0,
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.black12.withOpacity(0.1),
                ),
                child: Center(
                  child: Text(
                    title!,
                    style: TextStyle(
                      shadows: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 10.0,
                            spreadRadius: 2.0)
                      ],
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: sizeFont,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
