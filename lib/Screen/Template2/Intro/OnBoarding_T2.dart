import 'package:flutter/material.dart';
import 'package:food_template_null_safety/Library/intro_views_flutter-2.4.0/lib/Models/page_view_model.dart';
import 'package:food_template_null_safety/Library/intro_views_flutter-2.4.0/lib/intro_views_flutter.dart';
import 'package:food_template_null_safety/Screen/Template2/Intro/chosseLogin.dart';

class OnBoardingScreenT2 extends StatefulWidget {
  @override
  _OnBoardingScreenT2State createState() => _OnBoardingScreenT2State();
}

var _fontHeaderStyle = TextStyle(
    fontFamily: "Sofia",
    fontSize: 23.0,
    fontWeight: FontWeight.w800,
    color: Colors.black87,
    letterSpacing: 1.1);

var _fontDescriptionStyle = TextStyle(
    fontFamily: "Sofia",
    fontSize: 17.0,
    color: Colors.black26,
    fontWeight: FontWeight.w400);

///
/// Page View Model for on boarding
///
final pages = [
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Order Food',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text('Order with friend and family is make better for time food',
            textAlign: TextAlign.center, style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/Template2/onBoarding1.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Fast safe Deliver',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Our staff delivery with love and make your order safety to deliver',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/Template2/onBoarding2.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Catering Service',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'The best restaurant are provide on many locations and shop',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/Template2/onBoarding3.png',
        height: 255.0,
        width: 255.0,
        alignment: Alignment.center,
      )),
];

class _OnBoardingScreenT2State extends State<OnBoardingScreenT2> {
  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Colors.black45,
      skipText: Text(
        "SKIP",
        style: _fontDescriptionStyle.copyWith(
            color: Color(0xFFF88421),
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      doneText: Text(
        "DONE",
        style: _fontDescriptionStyle.copyWith(
            color: Color(0xFFF88421),
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      onTapDoneButton: () {
        Navigator.of(context).pushReplacement(PageRouteBuilder(
          pageBuilder: (_, __, ___) => new ChosseLoginT2(),
          transitionsBuilder:
              (_, Animation<double> animation, __, Widget widget) {
            return Opacity(
              opacity: animation.value,
              child: widget,
            );
          },
          transitionDuration: Duration(milliseconds: 1500),
        ));
      },
    );
  }
}
