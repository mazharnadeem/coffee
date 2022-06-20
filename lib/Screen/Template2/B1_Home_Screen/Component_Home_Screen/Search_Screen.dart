import 'package:flutter/material.dart';

class SearchScreenT2 extends StatefulWidget {
  SearchScreenT2({Key? key}) : super(key: key);

  @override
  _SearchScreenT2State createState() => _SearchScreenT2State();
}

class _SearchScreenT2State extends State<SearchScreenT2> {
  @override
  Widget build(BuildContext context) {
    /// Create responsive height and padding
    final MediaQueryData media = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: statusBarHeight),
                height: 100.0 + statusBarHeight,
                decoration: BoxDecoration(

                    /// gradient in appbar
                    gradient: LinearGradient(
                        colors: [
                          const Color(0xFFFF928B),
                          const Color(0xFFFFAC81),
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp)),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "X",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              )),
                          Text(
                            "Search",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontFamily: "Sofia"),
                          ),
                          SizedBox(
                            width: 10.0,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      child: Container(
                        height: 40.0,
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 10.0, color: Colors.black12)
                            ]),
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
                                labelStyle: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: 'Sans',
                                    letterSpacing: 0.3,
                                    color: Colors.black38,
                                    fontWeight: FontWeight.w600)),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: statusBarHeight + 100.0),
              child: Image.asset(
                "assets/Template2/icon/searchEmpty.png",
                height: 170.0,
              ),
            ),
          ),
          Text(
            "No Data Available",
            style: TextStyle(
                fontFamily: "Sofia", color: Colors.black26, fontSize: 17.0),
          )
        ],
      ),
    );
  }
}
