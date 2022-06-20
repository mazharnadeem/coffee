import 'package:flutter/material.dart';

import 'checkout.dart';

class personalInformation extends StatefulWidget {
  personalInformation({Key? key}) : super(key: key);

  @override
  _personalInformationState createState() => _personalInformationState();
}

class _personalInformationState extends State<personalInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Personal Information",
          style: TextStyle(fontFamily: "Sofia", fontSize: 17.0),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                "ADDRESS NAME",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 0.0,
              ),
              TextFormField(
                  decoration: InputDecoration(
                hintText: 'Home',
                hintStyle: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 17.0),
                enabledBorder: new UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12,
                  ),
                ),
              )),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "ORGANIZATION",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 0.0,
              ),
              TextFormField(
                  decoration: InputDecoration(
                hintText: 'MEGASYSTEMS INC',
                hintStyle: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 17.0),
                enabledBorder: new UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12,
                  ),
                ),
              )),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "ADDRESS",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 0.0,
              ),
              TextFormField(
                  decoration: InputDecoration(
                hintText: 'MEGASYSTEMS INC',
                hintStyle: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 17.0),
                enabledBorder: new UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12,
                  ),
                ),
              )),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "STREET",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 0.0,
              ),
              TextFormField(
                  decoration: InputDecoration(
                hintText: 'DC 20521-7100',
                hintStyle: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 17.0),
                enabledBorder: new UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12,
                  ),
                ),
              )),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "TOWN",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 0.0,
              ),
              TextFormField(
                  decoration: InputDecoration(
                hintText: 'Quebec Place',
                hintStyle: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 17.0),
                enabledBorder: new UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12,
                  ),
                ),
              )),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "COUNTRY",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 0.0,
              ),
              TextFormField(
                  decoration: InputDecoration(
                hintText: 'United State',
                hintStyle: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 17.0),
                enabledBorder: new UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12,
                  ),
                ),
              )),
              SizedBox(
                height: 80.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => checkout()));
                },
                child: Container(
                  height: 55.0,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Go To Payment",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Sofia",
                          fontSize: 19.0),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60.0)),
                      color: Color(0xFFF48522)),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
