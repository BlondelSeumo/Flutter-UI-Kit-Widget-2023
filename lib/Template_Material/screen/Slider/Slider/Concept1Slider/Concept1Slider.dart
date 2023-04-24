import 'package:flutter/material.dart';

import 'SliderWidget/lib/Models/page_view_model.dart';
import 'SliderWidget/lib/intro_views_flutter.dart';

class Concept1Slider extends StatefulWidget {
  @override
  _Concept1SliderState createState() => _Concept1SliderState();
}

var _fontHeaderStyle = TextStyle(
    fontFamily: "Sofia",
    fontSize: 25.0,
    fontWeight: FontWeight.w700,
    color: Colors.black87,
    letterSpacing: 1.5);

var _fontDescriptionStyle = TextStyle(
    fontFamily: "Sofia",
    fontSize: 17.0,
    color: Colors.black26,
    fontWeight: FontWeight.w400);

final pages = [
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Online Shopping',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 500.0,
        child: Text('You can shopping anytime, anywhere \nthat you want',
            textAlign: TextAlign.center, style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/images/onBoarding1.gif',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Fresh Grocery',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 500.0,
        child: Text(
            'If you are wondering what to cook today, \ndont worry because we have a list\nfor you',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/images/onBoarding3.gif',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Ship at Your Home',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 500.0,
        child: Text('The products you order will be\ndelivered to your address',
            textAlign: TextAlign.center, style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/images/onBoarding2.gif',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
];

class _Concept1SliderState extends State<Concept1Slider> {
  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Colors.black45,
      skipText: Text(
        "SKIP",
        style: _fontDescriptionStyle.copyWith(
            color: Color(0xFF73AE5B),
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      doneText: Text(
        "DONE",
        style: _fontDescriptionStyle.copyWith(
            color: Color(0xFF73AE5B),
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      onTapDoneButton: () {
        Navigator.of(context).pop();
      },
    );
  }
}
