import 'package:flutter/material.dart';

class Concept2Slider extends StatefulWidget {
  @override
  Concept2SliderState createState() => new Concept2SliderState();
}

class Concept2SliderState extends State<Concept2Slider> {
  int step = 1;
  static const int intFull = 10;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Slider Concept 2",
          style: TextStyle(fontFamily: "Sofia", color: Colors.white),
        ),
        elevation: 0.0,
        backgroundColor: Colors.orangeAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Align(
                child: Text("Step $step of 10",
                    style:
                        TextStyle(fontFamily: "Sofia", color: Colors.black87)),
              )),
          Container(
            padding: EdgeInsets.only(bottom: 5, top: 5),
            height: 55,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (step > 1) step--;
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Text("BACK",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black87,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.center,
                  child: buildProgress(context),
                )),
                Container(
                  height: double.infinity,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (step < intFull) step++;
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Text("NEXT",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black87,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildProgress(BuildContext context) {
    double progress = step * (1 / intFull);
    Widget widget = Container(
      height: 6,
      width: 210,
      child: LinearProgressIndicator(
        value: progress,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
        backgroundColor: Colors.white,
      ),
    );
    return widget;
  }
}
