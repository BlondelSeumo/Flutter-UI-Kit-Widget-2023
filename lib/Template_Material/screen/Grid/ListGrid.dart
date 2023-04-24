import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Card/Concept1_Card.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Grid/Grid_Screen/FlashSaleGrid.dart';
import 'package:page_transition/page_transition.dart';

import 'Grid_Screen/BasicGrid.dart';
import 'Grid_Screen/ECommerceGridScreen.dart';
import 'Grid_Screen/HotelGridScreen.dart';
import 'Grid_Screen/StaggeredGridScreen.dart';
import 'Grid_Screen/VideoGridScreen.dart';

class GridScreen extends StatefulWidget {
  GridScreen({Key? key}) : super(key: key);

  @override
  _GridScreenState createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
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
                            child: EcommerceScreen(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFF00B4DB),
                        Color(0xFF0083B0),
                      ], Color(0xFF15EDED), "E-Commerce Grid",
                          "assets/images/grid.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: StaggeredGrid(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFF00B4DB),
                        Color(0xFF0083B0),
                      ], Color(0xFF15EDED), "Staggered Grid",
                          "assets/images/grid.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: VideoGridScreen(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFF00B4DB),
                        Color(0xFF0083B0),
                      ], Color(0xFF15EDED), "Video Grid",
                          "assets/images/grid.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: HotelGrid(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFF00B4DB),
                        Color(0xFF0083B0),
                      ], Color(0xFF15EDED), "Hotel Grid",
                          "assets/images/grid.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: BasicGrid(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFF00B4DB),
                        Color(0xFF0083B0),
                      ], Color(0xFF15EDED), "Basic Grid",
                          "assets/images/grid.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: FlashSaleGrid(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFF00B4DB),
                        Color(0xFF0083B0),
                      ], Color(0xFF15EDED), "Flash Sale Grid",
                          "assets/images/grid.png")),
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
                Color(0xFF00B4DB),
                Color(0xFF0083B0),
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
                        "Grid Screen",
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
                      fontSize: 17.0,
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
