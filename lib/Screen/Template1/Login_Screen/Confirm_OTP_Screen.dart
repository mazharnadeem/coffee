import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_template_null_safety/Screen/Template1/Bottom_Nav_Bar/bottomNavBar.dart';
import 'package:food_template_null_safety/Screen/Template1/Login_Screen/SignIn_Screen.dart';
import 'package:food_template_null_safety/Screen/Template1/Login_Screen/create_Password.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class ConfirmOtpPage extends StatefulWidget {
  @override
  _ConfirmOtpPageState createState() => _ConfirmOtpPageState();
}

class _ConfirmOtpPageState extends State<ConfirmOtpPage> {
  TextEditingController otp1 = TextEditingController(text: '1');
  TextEditingController otp2 = TextEditingController(text: '2');
  TextEditingController otp3 = TextEditingController(text: '3');
  TextEditingController otp4 = TextEditingController(text: '4');
  TextEditingController otp5 = TextEditingController(text: '5');

  Widget otpBox(TextEditingController otpController) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.8),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: SizedBox(
          width: 9,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: TextField(
              controller: otpController,
              decoration: InputDecoration(
                  border: InputBorder.none, contentPadding: EdgeInsets.zero),
              style: TextStyle(fontSize: 16.0),
              keyboardType: TextInputType.phone,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    // Widget title = Padding(
    //     padding: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
    //     child: Text(
    //       'Confirm your OTP Verification',
    //       style: TextStyle(
    //           color: Colors.white,
    //           fontSize: 34.0,
    //           fontWeight: FontWeight.w600,
    //           fontFamily: "Sofia",
    //           shadows: [
    //             BoxShadow(
    //               color: Colors.black,
    //               offset: Offset(0, 5),
    //               blurRadius: 10.0,
    //             )
    //           ]),
    //     ));

    // Widget verifyButton = Padding(
    //   padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 154.0),
    //   child: InkWell(
    //     onTap: () {
    //       Navigator.of(context).pushReplacement(
    //           PageRouteBuilder(pageBuilder: (_, __, ____) => bottomNavBar()));
    //     },
    //     child: Container(
    //       height: 55.0,
    //       width: double.infinity,
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(80.0),
    //         gradient: LinearGradient(colors: [
    //           Color(0xFFFEE140),
    //           Color(0xFFFA709A),
    //         ]),
    //       ),
    //       child: Center(
    //           child: Text(
    //         "Verification",
    //         style: TextStyle(
    //             color: Colors.white,
    //             fontSize: 17.0,
    //             fontWeight: FontWeight.w700,
    //             fontFamily: "Sofia",
    //             letterSpacing: 0.9),
    //       )),
    //     ),
    //   ),
    // );

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
                        padding: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
                        child: Text(
                          'Confirm your OTP',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34.0,
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
                            'Type the OTP code',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
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
                              'sent to ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
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
                            Text(
                              'alex@gmail.com',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: "Sofia",
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 5),
                                      blurRadius: 10.0,
                                    )
                                  ]),
                            )
                          ],)
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
                      child: Text(
                        '00:23',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 34.0,
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
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0.0, left: 20.0),
                    child: Center(
                      child: PinCodeTextField(
                        controller: new TextEditingController(),
                        highlightColor: Colors.white,
                        pinBoxColor: Color(0xFF131313),
                        pinBoxRadius: 10,

                        maxLength: 5,
                        pinBoxHeight: 55,
                        pinBoxWidth: 55,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 154.0),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
                          child: Wrap(children: [
                            Text(
                              'Did not receive the code? ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: "Sofia",
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 5),
                                      blurRadius: 10.0,
                                    )
                                  ]),
                            ),
                            Text(
                              'Resend',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Sofia",
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 5),
                                      blurRadius: 10.0,
                                    )
                                  ]),
                            )
                          ],)
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(pageBuilder: (_, __, ____) => CreatePassword()));
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
                                "Verify",
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
