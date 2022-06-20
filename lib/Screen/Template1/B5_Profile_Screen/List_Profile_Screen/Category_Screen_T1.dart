import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template1/B1_Home_Screen/Detail_Home_Screen/Category_Screen.dart';

class CategoryProfileScreenT1 extends StatefulWidget {
  CategoryProfileScreenT1({Key? key}) : super(key: key);

  @override
  _CategoryProfileScreenT1State createState() =>
      _CategoryProfileScreenT1State();
}

class _CategoryProfileScreenT1State extends State<CategoryProfileScreenT1> {
  @override
  Widget build(BuildContext context) {
    /// Component appbar
    var _appbar = AppBar(
      brightness: Brightness.dark,
      backgroundColor: Color(0xFF1E2026),
      elevation: 0.0,
      iconTheme: IconThemeData(color: Color(0xFFFF975D)),
      centerTitle: true,
      title: Text(
        "Category",
        style: TextStyle(
            fontFamily: "Sofia",
            fontSize: 21.0,
            color: Colors.white,
            fontWeight: FontWeight.w700),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFF1E2026),

      /// Calling variable appbar
      appBar: _appbar,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 2.0,
            ),
            itemCard(
              image:
                  "https://images.pexels.com/photos/1581384/pexels-photo-1581384.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
              title: "Dinner",
            ),
            itemCard(
              image:
                  "https://images.pexels.com/photos/1449775/pexels-photo-1449775.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
              title: "Lunch",
            ),
            itemCard(
              image:
                  "https://images.pexels.com/photos/2662875/pexels-photo-2662875.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              title: "Breakfast",
            ),
            itemCard(
              image:
                  "https://images.pexels.com/photos/1089570/pexels-photo-1089570.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              title: "Cafe",
            ),
            itemCard(
              image:
                  "https://images.pexels.com/photos/1640774/pexels-photo-1640774.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              title: "Healtyfood",
            ),
            itemCard(
              image:
                  "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              title: "Fashfood",
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}

///
/// Create item card
///
class itemCard extends StatelessWidget {
  String? image, title;
  itemCard({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0, bottom: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => new CategoryScreenT1(
                    title: title,
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
          height: 110.0,
          width: 400.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: Material(
            color: Color(0xFF1E2026),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      image!,
                      errorListener: () => new Icon(Icons.error),
                    ),
                    fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFABABAB).withOpacity(0.15),
                    blurRadius: 4.0,
                    spreadRadius: 3.0,
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.black12.withOpacity(0.35),
                ),
                child: Center(
                  child: Text(
                    title!,
                    style: TextStyle(
                      shadows: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10.0,
                            spreadRadius: 2.0)
                      ],
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 32.0,
                    ),
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
