import 'package:flutter/material.dart';

class GalleryScreenT2 extends StatefulWidget {
  GalleryScreenT2({Key? key}) : super(key: key);

  @override
  _GalleryScreenT2State createState() => _GalleryScreenT2State();
}

class _GalleryScreenT2State extends State<GalleryScreenT2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: PageView(
        controller: PageController(
          initialPage: 0,
        ),
        scrollDirection: Axis.horizontal,

        ///Enable physics property to provide your PageView with a
        ///custom scroll behaviour
        ///Here BouncingScrollPhysics will pull back the boundary
        ///item (first or last) if the user tries to scroll further.
        //physics: BouncingScrollPhysics(),
        pageSnapping: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 5.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/image_recipe/recipe5.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 5.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/image_recipe/recipe23.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 5.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/image_recipe/recipe7.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 5.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/image_recipe/recipe8.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 5.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/image_recipe/recipe9.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
