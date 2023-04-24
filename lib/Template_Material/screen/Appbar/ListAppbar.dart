import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Appbar/Concept1_Appbar.dart';
import 'Appbar/Concept2_Appbar.dart';
import 'Appbar/Concept3_Appbar.dart';
import 'Appbar/Concept4_Appbar.dart';
import 'Appbar/Concept5_Appbar.dart';

class ListAppbar extends StatefulWidget {
  ListAppbar({Key? key}) : super(key: key);

  @override
  _ListAppbarState createState() => _ListAppbarState();
}

class _ListAppbarState extends State<ListAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 25.0,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept1Appbar(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "Concept 1 Appbar",
                          "assets/images/toolbar.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept2Appbar(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "Concept 2 Appbar",
                          "assets/images/toolbar.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept3Appbar(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "Concept 3 Appbar",
                          "assets/images/toolbar.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept4Appbar(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "Concept 4 Appbar",
                          "assets/images/toolbar.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept5Appbar(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "Concept 5 Appbar",
                          "assets/images/toolbar.png")),
                  SizedBox(
                    height: 30.0,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFFFF5F6D),
                Color(0xFFFFC371),
              ])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 20.0),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "List Appbar",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Sofia",
                            fontSize: 18.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget card(
    List<Color> _colorGradient, Color _colorShadow, String _title, _image) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 15.0),
    child: Container(
      height: 100.0,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: _colorGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
                color: Color(0xFF63AEED).withOpacity(0.2),
                blurRadius: 10.0,
                spreadRadius: 5.1,
                offset: Offset(3, 10))
          ]),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Image.asset(
                _image,
                height: 20.0,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  _title,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 19.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
