import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Bottom_Navigation_Bar/BottomNavBar/Basic_BottomNavBar.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Bottom_Navigation_Bar/BottomNavBar/Dot_BottomNavBar.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Bottom_Navigation_Bar/BottomNavBar/Light_BottomNavBar.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Bottom_Navigation_Bar/BottomNavBar/Navi_BottomNavBar.dart';
import 'package:page_transition/page_transition.dart';

import 'BottomNavBar/Circle_BottomNavBar.dart';
import 'BottomNavBar/ColorChange_BottomNavBar.dart';
import 'BottomNavBar/Curved_BottomNavBar.dart';
import 'BottomNavBar/Dark_BottomNavBar.dart';
import 'BottomNavBar/Icon_BottomNavBar.dart';
import 'BottomNavBar/Left_BottomNavBar.dart';
import 'BottomNavBar/Main_BottomNavBar.dart';
import 'BottomNavBar/Primary_BottomNavBar.dart';

class ListBottomNavBar extends StatefulWidget {
  ListBottomNavBar({Key? key}) : super(key: key);

  @override
  _ListBottomNavBarState createState() => _ListBottomNavBarState();
}

class _ListBottomNavBarState extends State<ListBottomNavBar> {
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
                            child: LeftBottomNavBar(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff6DC8F3),
                        Color(0xff73A1F9),
                      ], Color(0xFF15EDED), "Left Bottom Navigation",
                          "assets/images/bottomNavigate.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: BasicBottomNavBar(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff6DC8F3),
                        Color(0xff73A1F9),
                      ], Color(0xFF15EDED), "Basic Bottom Navigation",
                          "assets/images/bottomNavigate.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: ColorChangeBottomNav(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff6DC8F3),
                        Color(0xff73A1F9),
                      ], Color(0xFF15EDED), "Color Change Bottom Nav",
                          "assets/images/bottomNavigate.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: CurvedBottomNavBar(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff6DC8F3),
                        Color(0xff73A1F9),
                      ], Color(0xFF15EDED), "Curved Bottom Navigation",
                          "assets/images/bottomNavigate.png")),
                  // InkWell(
                  //     onTap: () {
                  //       Navigator.push(
                  //         context,
                  //         PageTransition(
                  //           type: PageTransitionType.leftToRightWithFade,
                  //           duration: Duration(milliseconds: 600),
                  //           child: CircleBottomNavBar(),
                  //         ),
                  //       );
                  //     },
                  //     child: card([
                  //       Color(0xff6DC8F3),
                  //       Color(0xff73A1F9),
                  //     ], Color(0xFF15EDED), "Circle Bottom Navigation",
                  //         "assets/images/bottomNavigate.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: LightBottomNavBar(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff6DC8F3),
                        Color(0xff73A1F9),
                      ], Color(0xFF15EDED), "Light Bottom Navigation",
                          "assets/images/bottomNavigate.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: DarkBottomNavBar(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff6DC8F3),
                        Color(0xff73A1F9),
                      ], Color(0xFF15EDED), "Dark Bottom Navigation",
                          "assets/images/bottomNavigate.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: DotBottomNavBar(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff6DC8F3),
                        Color(0xff73A1F9),
                      ], Color(0xFF15EDED), "Dot Bottom Navigation",
                          "assets/images/bottomNavigate.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: BottomNavigationIcon(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff6DC8F3),
                        Color(0xff73A1F9),
                      ], Color(0xFF15EDED), "Icon Bottom Navigation",
                          "assets/images/bottomNavigate.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: BottomNavBarPrimary(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff6DC8F3),
                        Color(0xff73A1F9),
                      ], Color(0xFF15EDED), "Primary Bottom Navigation",
                          "assets/images/bottomNavigate.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: BottomNavBarMain(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff6DC8F3),
                        Color(0xff73A1F9),
                      ], Color(0xFF15EDED), "Main Bottom Navigation",
                          "assets/images/bottomNavigate.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: NaviBottomNavBar(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff6DC8F3),
                        Color(0xff73A1F9),
                      ], Color(0xFF15EDED), "Navi Bottom Navigation",
                          "assets/images/bottomNavigate.png")),
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
                Color(0xff6DC8F3),
                Color(0xff73A1F9),
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
                        "Bottom Navigation Bar",
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
      height: 80.0,
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
