import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UtilitiesButtons extends StatefulWidget {
  UtilitiesButtons();

  @override
  UtilitiesButtonsState createState() => new UtilitiesButtonsState();
}

class UtilitiesButtonsState extends State<UtilitiesButtons> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5FBD84),
        centerTitle: true,
        title: Text(
          "Utilities Button",
          style: TextStyle(fontFamily: "Sofia", color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 25, 25, 15),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.screen_lock_portrait,
                          color: Color(0xFF5FBD84),
                          size: 30,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Qubicle Apps",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black,
                              fontSize: 19.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 75,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Colors.white,
                        ),
                        child: Text(
                          "FORCE STOP",
                          style: TextStyle(fontFamily: "Sofia", fontSize: 14.0),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Color(0xFF5FBD84),
                        ),
                        child: Text(
                          "UNINSTALL",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontFamily: "Sofia"),
                        ),
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 25, 25, 15),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.storage,
                        color: Colors.grey[500],
                        size: 24,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text("Storage",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w400,
                              color: Colors.black38)),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 75,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Total Size",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87)),
                            Container(
                              height: 8,
                            ),
                            Text("294 MB",
                                style: TextStyle(
                                    fontSize: 34,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black87)),
                            progress(70, 20),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("App",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Sofia",
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black)),
                                      Text("1212 MB",
                                          style: TextStyle(
                                              fontFamily: "Sofia",
                                              fontSize: 16,
                                              color: Colors.black45)),
                                    ],
                                  ),
                                  flex: 70,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Data",
                                          style: TextStyle(
                                              fontFamily: "Sofia",
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)),
                                      Text("222 MB",
                                          style: TextStyle(
                                              fontFamily: "Sofia",
                                              fontSize: 16,
                                              color: Colors.grey[400])),
                                    ],
                                  ),
                                  flex: 30,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 25, 25, 15),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.data_usage,
                        color: Colors.black38,
                        size: 24,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text("Data usage",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w400,
                              color: Colors.black38)),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 75,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Total",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            Text("421 MB",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w800,
                                    color: Colors.grey[900])),
                            Container(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget progress(int value, double height) {
  int rest = 100 - value;
  return Stack(
    children: <Widget>[
      Text("Sadsd"),
      Row(
        children: <Widget>[
          Expanded(
            child: Container(
                height: height, color: Color(0xFF5FBD84).withOpacity(0.5)),
            flex: 100,
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Expanded(
            child: Container(
              width: 200,
              height: 20,
              color: Color(0xFF5FBD84),
            ),
            flex: value,
          ),
          Expanded(
            child: Container(),
            flex: rest,
          ),
        ],
      )
    ],
  );
}
