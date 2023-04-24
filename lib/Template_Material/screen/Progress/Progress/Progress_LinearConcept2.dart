import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Brand.dart';

class ProgressLinearConcept2 extends StatefulWidget {
  ProgressLinearConcept2({Key? key}) : super(key: key);

  @override
  _ProgressLinearConcept2State createState() => _ProgressLinearConcept2State();
}

class _ProgressLinearConcept2State extends State<ProgressLinearConcept2> {
  double progressValue = 0.0;
  double progress = 0.0;

  @override
  void initState() {
    timerValueProgress();
    _timer();
    setState(() {
      _timer();
    });
    // TODO: implement initState
    super.initState();
  }

  _timer() async {
    return Timer(Duration(milliseconds: 5000), _Time);
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
                      child: LinearProgressIndicator(
                        value: progress,
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

  void timerValueProgress() {
    new Timer.periodic(Duration(milliseconds: 500), (Timer t) {
      setState(() {
        progress += 0.1;
        if (progress > 1.0) {
          progress = 0.0;
        }
      });
    });
  }
}
