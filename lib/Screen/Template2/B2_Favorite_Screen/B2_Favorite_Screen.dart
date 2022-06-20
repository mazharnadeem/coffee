import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template2/B1_Home_Screen/Component_Detail_Food/Food_Detail_Screen.dart';

class FavoriteScreenT2 extends StatefulWidget {
  FavoriteScreenT2({Key? key}) : super(key: key);

  @override
  _FavoriteScreenT2State createState() => _FavoriteScreenT2State();
}

class _FavoriteScreenT2State extends State<FavoriteScreenT2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Favorite",
          style: TextStyle(
              fontFamily: "Sofia", fontSize: 21.0, fontWeight: FontWeight.w600),
        ),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          card("assets/image/image_recipe/recipe1.jpg", "87 Botsford",
              "\$20.00", "4.3", "The Cheeses Guide Spaghetti", "dsafsa")
        ],
      ),
    );
  }
}

class card extends StatelessWidget {
  card(this.img, this.location, this.price, this.ratting, this.title, this.id);
  String img, title, location, ratting, price, id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => new FoodDetailT2(
                    title: this.title,
                    id: this.id,
                    image: this.img,
                    location: this.location,
                    price: this.price,
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
        child: Stack(
          children: <Widget>[
            Container(
              height: 170.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10.0,
                      color: Colors.black12.withOpacity(0.03),
                      spreadRadius: 10.0),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Hero(
                      tag: 'hero-tag-${this.id}',
                      child: Material(
                        child: Container(
                          height: 155.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(img), fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, right: 5.0, left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                            width: 170.0,
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.0),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.black26,
                              size: 15.0,
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black26,
                                  fontFamily: "Sofia",
                                  fontSize: 13.0),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              size: 17.0,
                              color: Colors.yellow,
                            ),
                            Text(
                              ratting,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontFamily: "Sofia",
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              width: 40.0,
                            ),
                            Container(
                              height: 22.0,
                              width: 80.0,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  color: Color(0xFFF48522)),
                              child: Center(
                                child: Text(
                                  "Free Delivery",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Sofia",
                                      fontSize: 10.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.bookmark,
                  color: Colors.red,
                  size: 30.0,
                )),
          ],
        ),
      ),
    );
  }
}
