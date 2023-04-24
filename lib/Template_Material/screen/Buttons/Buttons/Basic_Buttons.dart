import 'dart:ui';

import 'package:flutter/material.dart';

class BasicButtons extends StatefulWidget {
  BasicButtons();

  @override
  BasicButtonsState createState() => new BasicButtonsState();
}

class BasicButtonsState extends State<BasicButtons> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5FBD84),
        centerTitle: true,
        title: Text(
          "Basic Button",
          style: TextStyle(fontFamily: "Sofia", color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 42.0,
                  width: 95.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60.0)),
                      color: Colors.black38),
                  child: Center(
                    child: Text(
                      "BASIC",
                      style:
                          TextStyle(fontFamily: "Sofia", color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 42.0,
                  width: 95.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      color: Colors.orange),
                  child: Center(
                    child: Text(
                      "PRIMARY",
                      style:
                          TextStyle(fontFamily: "Sofia", color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 42.0,
                  width: 95.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      color: Color(0xFF5FBD84)),
                  child: Center(
                    child: Text(
                      "ACCENT",
                      style:
                          TextStyle(fontFamily: "Sofia", color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 42.0,
                  width: 95.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.black38),
                  child: Center(
                    child: Text(
                      "BASIC",
                      style:
                          TextStyle(fontFamily: "Sofia", color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 42.0,
                  width: 95.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.orange),
                  child: Center(
                    child: Text(
                      "PRIMARY",
                      style:
                          TextStyle(fontFamily: "Sofia", color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 42.0,
                  width: 95.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xFF5FBD84)),
                  child: Center(
                    child: Text(
                      "ACCENT",
                      style:
                          TextStyle(fontFamily: "Sofia", color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.black12,
                  ),
                  child: Text(
                    "BASIC",
                    style: TextStyle(color: Colors.black38),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.orange,
                  ),
                  child: Text(
                    "PRIMARY",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Color(0xFF5FBD84),
                  ),
                  child: Text(
                    "ACCENT",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
              ],
            ),
            Row(
              children: <Widget>[
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.transparent,
                  ),
                  child: Text(
                    "BASIC",
                    style: TextStyle(color: Colors.black38),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.transparent,
                  ),
                  child: Text(
                    "PRIMARY",
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.transparent,
                  ),
                  child: Text(
                    "ACCENT",
                    style: TextStyle(
                      color: Color(0xFF5FBD84),
                    ),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
              ],
            ),
            Row(
              children: <Widget>[
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.transparent,
                  ),
                  child: Text(
                    "Basic",
                    style: TextStyle(color: Colors.black38),
                  ),
                  onPressed: null,
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.transparent,
                  ),
                  child: Text(
                    "PRIMARY",
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.transparent,
                  ),
                  child: Text(
                    "ACCENT",
                    style: TextStyle(
                      color: Color(0xFF5FBD84),
                    ),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 42.0,
                  width: 95.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.black38),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "BASIC",
                          style: TextStyle(
                              fontFamily: "Sofia", color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 42.0,
                  width: 95.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.orange),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          "PRIMARY",
                          style: TextStyle(
                              fontFamily: "Sofia", color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 42.0,
                  width: 95.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xFF5FBD84)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        Text(
                          "ACCENT",
                          style: TextStyle(
                              fontFamily: "Sofia", color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(),
            Row(
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "fab1",
                  backgroundColor: Colors.white,
                  elevation: 3,
                  child: Icon(
                    Icons.mic,
                    color: Colors.black38,
                  ),
                  onPressed: () {
                    print('Clicked');
                  },
                ),
                Spacer(),
                FloatingActionButton(
                  heroTag: "fab2",
                  backgroundColor: Colors.orange,
                  elevation: 3,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print('Clicked');
                  },
                ),
                Spacer(),
                FloatingActionButton(
                  heroTag: "fab3",
                  backgroundColor: Color(0xFF5FBD84),
                  elevation: 3,
                  child: Icon(
                    Icons.create,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print('Clicked');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
