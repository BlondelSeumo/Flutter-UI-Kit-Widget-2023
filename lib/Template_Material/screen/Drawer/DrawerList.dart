import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Card/Concept1_Card.dart';
import 'package:page_transition/page_transition.dart';

import 'DrawerScreen/Concept1Drawer/Concept1Drawer.dart';
import 'DrawerScreen/Concept2Drawer.dart';
import 'DrawerScreen/Concept3Drawer.dart';
import 'DrawerScreen/Concept4Drawer.dart';
import 'DrawerScreen/Concept5Drawer.dart';

class DrawerList extends StatefulWidget {
  DrawerList({Key? key}) : super(key: key);

  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
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
                            child: Concept1Drawer(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFF7F7FD5),
                        Color(0xFF86A8E7),
                        Color(0xFF91EAE4),
                      ], Color(0xFF15EDED), "Concept 1 Drawer",
                          "assets/images/menu.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept2Drawer(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFF7F7FD5),
                        Color(0xFF86A8E7),
                        Color(0xFF91EAE4),
                      ], Color(0xFF15EDED), "Concept 2 Drawer",
                          "assets/images/menu.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept3Drawer(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFF7F7FD5),
                        Color(0xFF86A8E7),
                        Color(0xFF91EAE4),
                      ], Color(0xFF15EDED), "Concept 3 Drawer",
                          "assets/images/menu.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept4Drawer(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFF7F7FD5),
                        Color(0xFF86A8E7),
                        Color(0xFF91EAE4),
                      ], Color(0xFF15EDED), "Concept 4 Drawer",
                          "assets/images/menu.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept5Drawer(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFF7F7FD5),
                        Color(0xFF86A8E7),
                        Color(0xFF91EAE4),
                      ], Color(0xFF15EDED), "Concept 5 Drawer",
                          "assets/images/menu.png")),
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
                Color(0xFF7F7FD5),
                Color(0xFF86A8E7),
                Color(0xFF91EAE4),
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
                        "List Drawer",
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
