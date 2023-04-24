import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Brand.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Favorite.dart';
import 'dart:math' as math;

import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';

class LeftBottomNavBar extends StatefulWidget {
  @override
  _LeftBottomNavBarState createState() => _LeftBottomNavBarState();
}

class _LeftBottomNavBarState extends State<LeftBottomNavBar> {
  PageController pageController = PageController(viewportFraction: .8);
  var paddingLeft = 0.0;

  ///
  ///
  /// Bool to set true or false color button
  ///
  ///
  bool button1 = true;
  bool button2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 60, top: 60),
                child: button1 ? Category() : Home()),

            ///
            ///
            /// Create Appbar
            ///
            ///
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding:
                        EdgeInsets.only(top: 40.0, left: 80.0, right: 20.0),
                    child: _customAppBar())),
            Container(
              color: Color(0xFF5FBD84),
              height: MediaQuery.of(context).size.height,
              width: 60,
              padding: EdgeInsets.only(top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(bottom: 16, top: 17.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///
            ///
            /// Create left bottom nav bar
            ///
            ///
            Positioned(
              bottom: 200,
              child: Transform.rotate(
                angle: -math.pi / 2,
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        _buildMenu("Category", 0),
                        _buildMenu("Home", 1),
                      ],
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 250),
                      margin: EdgeInsets.only(left: paddingLeft),
                      width: 150,
                      height: 75,
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: ClipPath(
                              clipper: AppClipper(),
                              child: Container(
                                width: 150,
                                height: 60,
                                color: Color(0xFF5FBD84),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Transform.rotate(
                              angle: math.pi / 2,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenu(String menu, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          paddingLeft = index * 150.0;
          if (button1 == true && index == 1) {
            button1 = false;
            setState(() {
              index = 0;
            });
          } else {
            button1 = true;
            setState(() {
              index = 1;
            });
          }
        });
      },
      child: Container(
        width: 150,
        padding: EdgeInsets.only(top: 16),
        child: Center(
          child: Text(
            menu,
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontFamily: "Sofia"),
          ),
        ),
      ),
    );
  }

  Widget _customAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: "Hello,\n",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Sofia", fontSize: 17.0),
              children: [
                TextSpan(
                  text: "Brestley Hadwey",
                  style: TextStyle(
                    color: Color(0xFF5FBD84),
                    fontWeight: FontWeight.bold,
                    fontSize: 19.0,
                    height: 1.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 16),
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/5110839/pexels-photo-5110839.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(150.0))),
          ),
        ],
      ),
    );
  }
}

class AppClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(30, 0, 50, 20);
    path.quadraticBezierTo(size.width / 2, 40, size.width - 50, 20);
    path.quadraticBezierTo(size.width - 30, 0, size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
