import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Card/Concept1_Card.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Progress/Progress/Progress_CircleConcept2.dart';
import 'package:page_transition/page_transition.dart';

import 'Progress/Progress_Circle.dart';
import 'Progress/Progress_Linear.dart';
import 'Progress/Progress_LinearConcept2.dart';
import 'Progress/Progress_PullRefresh.dart';
import 'Progress/Progress_Scroll.dart';

class ListProgress extends StatefulWidget {
  ListProgress({Key? key}) : super(key: key);

  @override
  _ListProgressState createState() => _ListProgressState();
}

class _ListProgressState extends State<ListProgress> {
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
                            child: ProgressCircle(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFEE9CA7),
                        Color(0xFFFFDDE1),
                      ], Color(0xFF15EDED), "Progress Circle",
                          "assets/images/progress.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: ProgressLinear(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFEE9CA7),
                        Color(0xFFFFDDE1),
                      ], Color(0xFF15EDED), "Progress Linear",
                          "assets/images/progress.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: ProgressCircleConcept2(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFEE9CA7),
                        Color(0xFFFFDDE1),
                      ], Color(0xFF15EDED), "Progress Circle Concept 2",
                          "assets/images/progress.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: ProgressLinearConcept2(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFEE9CA7),
                        Color(0xFFFFDDE1),
                      ], Color(0xFF15EDED), "Progress Linear Concept 2",
                          "assets/images/progress.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: ProgressScroll(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFEE9CA7),
                        Color(0xFFFFDDE1),
                      ], Color(0xFF15EDED), "Progress Scroll",
                          "assets/images/progress.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: PullRefreshProgress(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFEE9CA7),
                        Color(0xFFFFDDE1),
                      ], Color(0xFF15EDED), "Progress Pull Refresh",
                          "assets/images/progress.png")),
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
                Color(0xFFEE9CA7),
                Color(0xFFFFDDE1),
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
                        "List Progress",
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
