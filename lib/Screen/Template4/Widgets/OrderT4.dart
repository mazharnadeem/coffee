import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Screen/Template4/Model/food.dart';
import 'package:food_template_null_safety/Screen/Template4/Screens/B1_HomeScreen/detailFoodScreenT4.dart';
import 'package:food_template_null_safety/Screen/Template4/Style/ThemeT4.dart'
    as Style;

class OrderAgain extends StatelessWidget {
  final foodItems = <Food>[
    Food(
        title: "Italian Pasta Resto",
        price: "25.00",
        img: 'assets/image/image_recipe/recipe4.jpg',
        rating: "4.2"),
    Food(
        title: "Pasta with Beef Burger",
        price: "20.00",
        img: 'assets/image/image_recipe/recipe5.png',
        rating: "4.2"),
    Food(
        title: "Black Beef",
        price: "13.00",
        img: 'assets/image/image_recipe/recipe6.png',
        rating: "4.7")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: foodItems.length * 120.0,
      child: ListView(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          children: foodItems.map<Widget>((Food food) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new FoodDetailT4(
                          title: food.title,
                          id: food.title,
                          image: food.img,
                          location: food.rating,
                          price: food.price,
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
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Hero(
                  tag: 'hero-tag-${food.title}',
                  child: Material(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.grey[300]!, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                image: DecorationImage(
                                    image: AssetImage(food.img!),
                                    fit: BoxFit.cover)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 10.0),
                                width: MediaQuery.of(context).size.width - 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      food.title!,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              food.rating!,
                                              style: TextStyle(
                                                  fontSize: 13.0,
                                                  fontFamily: "Sofia",
                                                  color: Colors.black38),
                                            ),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Icon(
                                              EvaIcons.star,
                                              color: Colors.yellow,
                                              size: 12.0,
                                            ),
                                            Icon(
                                              EvaIcons.star,
                                              color: Colors.yellow,
                                              size: 12.0,
                                            ),
                                            Icon(
                                              EvaIcons.star,
                                              color: Colors.yellow,
                                              size: 12.0,
                                            ),
                                            Icon(
                                              EvaIcons.star,
                                              color: Colors.yellow,
                                              size: 12.0,
                                            ),
                                            Icon(
                                              EvaIcons.star,
                                              color: Colors.black38,
                                              size: 12.0,
                                            ),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Text(
                                              "(200)",
                                              style: TextStyle(
                                                  fontSize: 13.0,
                                                  fontFamily: "Sofia",
                                                  color: Colors.black38),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "\$" + food.price!,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "Sofia",
                                    color: Style.Colors.mainColor,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList()),
    );
  }
}
