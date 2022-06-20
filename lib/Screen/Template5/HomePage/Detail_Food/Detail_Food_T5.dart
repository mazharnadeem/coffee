import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Data_Model/ModelFashFood.dart';
import 'package:food_template_null_safety/Screen/Template3/Home_Screen/Bag_Screen/MyBag_Screen.dart';

class DetailPageT5 extends StatefulWidget {
  String? image, title, item;
  int? price, weight, calory, protein;
  DetailPageT5(
      {this.image,
      this.price,
      this.weight,
      this.calory,
      this.protein,
      this.item,
      this.title});
  @override
  _DetailPageT5State createState() => _DetailPageT5State();
}

class _DetailPageT5State extends State<DetailPageT5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E8FD),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 360,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Hero(
                        tag: "image${widget.image}",
                        child: Image(
                          height: 390.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          image: AssetImage(widget.image!),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: _customAppBar(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: ListView(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 0.0,
                    ),
                    Text(
                      "${widget.title}",
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "\$${widget.price!.toInt()}",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF5AE87),
                          ),
                        ),
                        SizedBox(width: 30),
                        _buildCounter(),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _buildInfo("Weight", "${widget.weight!.toInt()}gm"),
                        _buildInfo("Calories", "${widget.calory!.toInt()}ccal"),
                        _buildInfo("Protein", "${widget.protein!.toInt()}gm"),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {},
                            padding: EdgeInsets.symmetric(vertical: 15),
                            color: Color(0xFFF5AE87),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Sofia",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfo(String title, String val) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontFamily: "Sofia",
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          "$val",
          style: TextStyle(
              fontSize: 20, fontFamily: "Sofia", fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  Widget _customAppBar() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.all(12.5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12.withOpacity(0.1),
                      blurRadius: 10.0,
                      spreadRadius: 4.0)
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Icon(
                Icons.arrow_back_ios,
                size: 17,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new MyBagScreenT3()));
            },
            child: Container(
              padding: EdgeInsets.all(12.5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Icon(
                Icons.shop,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCounter() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5AE87).withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.remove,
              color: Colors.black,
              size: 16.0,
            ),
            onPressed: null,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "1",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,
              size: 16.0,
            ),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
