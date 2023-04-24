import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Brand.dart';

class ProgressCircle extends StatefulWidget {
  ProgressCircle({Key? key}) : super(key: key);

  @override
  _ProgressCircleState createState() => _ProgressCircleState();
}

class _ProgressCircleState extends State<ProgressCircle> {
  @override
  void initState() {
    _timer();
    setState(() {
      _timer();
    });
    // TODO: implement initState
    super.initState();
  }

  _timer() async {
    return Timer(Duration(milliseconds: 4000), _Time);
  }

  void _Time() {
    setState(() {
      loading = false;
    });
  }

  @override
  bool loading = true;

  Widget build(BuildContext context) {
    return loading
        ? Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 150.0,
                ),
                Container(
                  height: 270.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/noInternet.png")),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Check Connection",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: "Sofia",
                      letterSpacing: 1.1,
                      fontWeight: FontWeight.w700,
                      color: Colors.orangeAccent),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: Text(
                    "Please waiting 4 second",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: "Sofia",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: Align(
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
                        backgroundColor: Colors.black12,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                )
              ],
            ),
          )
        : Category();
  }
}
