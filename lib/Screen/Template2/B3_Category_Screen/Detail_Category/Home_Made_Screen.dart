import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Data_Model/homeMade.dart';
import 'package:food_template_null_safety/Screen/Template2/B1_Home_Screen/Component_Detail_Food/Food_Detail_Screen.dart';

class homeMade extends StatefulWidget {
  homeMade({Key? key}) : super(key: key);

  @override
  _homeMadeState createState() => _homeMadeState();
}

class _homeMadeState extends State<homeMade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Home Made",
          style: TextStyle(
              fontFamily: "Sofia", fontSize: 19.0, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                height: 40.0,
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xFFF7F7FA),
                ),
                padding: EdgeInsets.only(
                    left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
                child: Theme(
                  data: ThemeData(
                    hintColor: Colors.transparent,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          color: Colors.black38,
                        ),
                        hintText: "What would you like to eat?",
                        hintStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Sans',
                            letterSpacing: 0.3,
                            color: Colors.black38,
                            fontWeight: FontWeight.w600)),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0),
                shrinkWrap: true,
                primary: false,
                itemBuilder: (ctx, index) {
                  return cardDinner(homeMadeDataArray[index]);
                },
                itemCount: homeMadeDataArray.length,
              ),
            ),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}

class cardDinner extends StatelessWidget {
  homeMadeData _dinner;
  cardDinner(this._dinner);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 15.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => new FoodDetailT2(
                    title: _dinner.title,
                    id: _dinner.id,
                    image: _dinner.image,
                    location: _dinner.location,
                    price: _dinner.price,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Hero(
                  tag: 'hero-tag-${_dinner.id}',
                  child: Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            opaque: false,
                            pageBuilder: (BuildContext context, _, __) {
                              return new Material(
                                color: Colors.black54,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 5.0,
                                      right: 5.0,
                                      top: 0.0,
                                      bottom: 0.0),
                                  child: InkWell(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0,
                                          right: 5.0,
                                          top: 160.0,
                                          bottom: 160.0),
                                      child: Container(
                                        height: 500.0,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image:
                                                    AssetImage(_dinner.image!),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
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
                        height: 110.0,
                        width: 110.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(7.0),
                                topRight: Radius.circular(7.0)),
                            image: DecorationImage(
                                image: AssetImage(_dinner.image!),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _dinner.title!,
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
                            _dinner.location!,
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
                              _dinner.ratting!,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Sofia",
                                  fontSize: 13.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 70.0, right: 20.0),
                child: Container(
                  height: 30.0,
                  width: 70.0,
                  color: Color(0xFFF48522),
                  child: Center(
                    child: Text(
                      _dinner.distance!,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
