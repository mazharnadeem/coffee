import 'package:flutter/material.dart';

import 'Confirm_OTP_Screen.dart';
import 'SignIn_Screen.dart';

class signupTemplate1 extends StatefulWidget {
  signupTemplate1({Key? key}) : super(key: key);

  @override
  _signupTemplate1State createState() => _signupTemplate1State();
}

class _signupTemplate1State extends State<signupTemplate1> {

  var termsBox=false;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF151515),
      body: SingleChildScrollView(

        child: Stack(



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
            Column(
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                ),
                Image.asset("assets/Template1/image/yummyFuture.png"),
                SizedBox(
                  height: 80.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 28.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 40.0),
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
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(0.0),
                                filled: true,
                                fillColor: Colors.transparent,
                                labelText: 'First Name',
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
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 40.0),
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
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(0.0),
                                filled: true,
                                fillColor: Colors.transparent,
                                labelText: 'Last Name',
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
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 40.0),
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
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(0.0),
                                filled: true,
                                fillColor: Colors.transparent,
                                labelText: 'Phone Number',
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
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 40.0),
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
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(0.0),
                                filled: true,
                                fillColor: Colors.transparent,
                                labelText: 'Email Address',
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
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 40.0),
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
                            decoration: InputDecoration(
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
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 40.0),
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
                            decoration: InputDecoration(
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
                Row(

                  children: [
                  Column(
                    children: [
                      Checkbox(
                          value: termsBox,
                          // splashRadius: 20,
                          side: BorderSide(color: Color(0xFF0AD2DF)),
                          activeColor: Color(0xFF0AD2DF),

                          onChanged: (val){
                            termsBox=val!;
                            setState(() {

                            });

                      })

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          Text(
                            "You are agree to our ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Sofia",
                                letterSpacing: 0.9),
                          ),
                          Text(
                            "terms and Conditions",
                            style: TextStyle(
                                color: Color(0xFF0AD2DF),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Sofia",
                                letterSpacing: 0.9),
                          ),
                          Text(
                            " as well as",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Sofia",
                                letterSpacing: 0.9),
                          ),
                        ],
                      ),
                      Wrap(
                        children: [
                          Text(
                            "privacy policy",
                            style: TextStyle(
                                color: Color(0xFF0AD2DF),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Sofia",
                                letterSpacing: 0.9),
                          ),
                        ],
                      ),
                    ],
                  )
                ],),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 64.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) =>
                                  ConfirmOtpPage()));
                    },
                    child: Container(
                      height: 52.0,
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
                            "Join now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Sofia",
                                letterSpacing: 0.9),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => signinTemplate1()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 15.0),
                      ),
                      Text(" Login In Now",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Color(0xFF4FF7FF),
                              fontWeight: FontWeight.w300,
                              fontSize: 15.0))
                    ],
                  ),
                ),
              ],
            )
            // Column(
            //
            //   children: [
            //     SizedBox(
            //       height: 100.0,
            //     ),
            //     Image.asset("assets/Template1/image/yummyFuture.png"),
            //     SizedBox(
            //       height: 80.0,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 100.0),
            //       child: Container(
            //         height: _height,
            //         width: double.infinity,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.only(
            //                 topLeft: Radius.circular(20.0),
            //                 topRight: Radius.circular(20.0)),
            //             color: Color(0xFF1E2026)),
            //         child: ,
            //       ),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
