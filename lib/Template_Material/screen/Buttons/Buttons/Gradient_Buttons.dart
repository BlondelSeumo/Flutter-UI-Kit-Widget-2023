import 'dart:ui';

import 'package:flutter/material.dart';

class GradientButtons extends StatefulWidget {
  GradientButtons();

  @override
  GradientButtonsState createState() => new GradientButtonsState();
}

class GradientButtonsState extends State<GradientButtons> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5FBD84),
        centerTitle: true,
        title: Text(
          "Gradient Button",
          style: TextStyle(fontFamily: "Sofia", color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                gradient: LinearGradient(
                  colors: [Color(0xFF11998E), Color(0xFF38EF7D)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w700,
                      fontSize: 19.0,
                      letterSpacing: 1.1),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  colors: [Color(0xFFF7971E), Color(0xFFFFD200)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w700,
                      fontSize: 19.0,
                      letterSpacing: 1.1),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(0.0)),
                gradient: LinearGradient(
                  colors: [Color(0xFF2193B0), Color(0xFF6DD5ED)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w700,
                      fontSize: 19.0,
                      letterSpacing: 1.1),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  gradient: LinearGradient(
                    colors: [Color(0xFF8E2DE2), Color(0xFF4A00E0)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15.0,
                        spreadRadius: 3.0,
                        color: Color(0xFF8E2DE2).withOpacity(0.5))
                  ]),
              child: Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w700,
                      fontSize: 19.0,
                      letterSpacing: 1.1),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  gradient: LinearGradient(
                    colors: [Color(0xFF2BC0E4), Color(0xFFEAECC6)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15.0,
                        spreadRadius: 2.0,
                        color: Color(0xFF2BC0E4).withOpacity(0.35))
                  ]),
              child: Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w700,
                      fontSize: 19.0,
                      letterSpacing: 1.1),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  gradient: LinearGradient(
                    colors: [Color(0xFF74EBD5), Color(0xFFACB6E5)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15.0,
                        spreadRadius: 2.0,
                        color: Color(0xFF74EBD5).withOpacity(0.7))
                  ]),
              child: Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w700,
                      fontSize: 19.0,
                      letterSpacing: 1.1),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF12C2E9),
                      Color(0xFFC471ED),
                      Color(0xFFF64F59)
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15.0,
                        spreadRadius: 2.0,
                        color: Color(0xFF8E2DE2).withOpacity(0.5))
                  ]),
              child: Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w700,
                      fontSize: 19.0,
                      letterSpacing: 1.1),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFCC95C0),
                      Color(0xFFDBD4B4),
                      Color(0xFF7AA1D2)
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15.0,
                        spreadRadius: 2.0,
                        color: Color(0xFFDBD4B4).withOpacity(0.65))
                  ]),
              child: Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w700,
                      fontSize: 19.0,
                      letterSpacing: 1.1),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF5433FF),
                      Color(0xFF20BDFF),
                      Color(0xFFA5FECB)
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15.0,
                        spreadRadius: 2.0,
                        color: Color(0xFF20BDFF).withOpacity(0.7))
                  ]),
              child: Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w700,
                      fontSize: 19.0,
                      letterSpacing: 1.1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
