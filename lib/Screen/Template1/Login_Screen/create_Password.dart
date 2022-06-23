import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_template_null_safety/Screen/Template1/Bottom_Nav_Bar/bottomNavBar.dart';
import 'package:food_template_null_safety/Screen/Template1/Login_Screen/SignIn_Screen.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class CreatePassword extends StatefulWidget {
  @override
  _CreatePasswordState createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: _height,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    radius: 2,
                    center: Alignment.topCenter,
                    colors: [
                      Color(0xFF626262),
                      Color(0xFF151515),
                      Color(0xFF151515),
                    ]
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 30.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                                onTap: () => Navigator.of(context).pushReplacement(
                                    PageRouteBuilder(
                                        pageBuilder: (_, __, ___) =>
                                            signinTemplate1())),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 25.0,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 0.0, right: 20.0),
                            child: Text(
                              'Create new Password',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Sofia",
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 5),
                                      blurRadius: 10.0,
                                    )
                                  ]),
                            )),

                      ]),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
                          child: Text(
                            'Create a new password for your Yummy',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Sofia",
                                shadows: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0, 5),
                                    blurRadius: 10.0,
                                  )
                                ]),
                          )),
                      Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
                          child: Wrap(children: [
                            Text(
                              'Future Account',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Sofia",
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 5),
                                      blurRadius: 10.0,
                                    )
                                  ]),
                            ),
                          ],)
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 15.0),
                  child: Container(
                    height: 53.5,
                    decoration: BoxDecoration(
                      color: Color(0xFF23252E),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      border: Border.all(
                        color: Colors.black12,
                        width: 0.15,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, top: 5.0),
                      child: Theme(
                        data: ThemeData(hintColor: Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: TextFormField(
                            style: new TextStyle(color: Colors.white),
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            autofocus: false,
                            obscureText: true,

                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.visibility_off_outlined,color: Colors.white),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(0.0),
                                filled: true,
                                fillColor: Colors.transparent,
                                labelText: 'Password',
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle: TextStyle(
                                  color: Colors.white70,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 15.0),
                  child: Container(
                    height: 53.5,
                    decoration: BoxDecoration(
                      color: Color(0xFF23252E),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      border: Border.all(
                        color: Colors.black12,
                        width: 0.15,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, top: 5.0),
                      child: Theme(
                        data: ThemeData(hintColor: Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: TextFormField(
                            style: new TextStyle(color: Colors.white),
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            autofocus: false,
                            obscureText: true,

                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.visibility_off_outlined,color: Colors.white),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(0.0),
                                filled: true,
                                fillColor: Colors.transparent,
                                labelText: 'Confirm Password',
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle: TextStyle(
                                  color: Colors.white70,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 154.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              PageRouteBuilder(pageBuilder: (_, __, ____) => bottomNavBar()));
                        },
                        child: Container(
                          height: 55.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80.0),
                            gradient: LinearGradient(colors: [
                              Color(0xFFF109FD),
                              Color(0xFF0AD2DF),

                            ]),
                          ),
                          child: Center(
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Sofia",
                                    letterSpacing: 0.9),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
