import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ndialog/ndialog.dart';

class AnimationDialog2 extends StatefulWidget {
  AnimationDialog2();

  @override
  AnimationDialog2State createState() => new AnimationDialog2State();
}

class AnimationDialog2State extends State<AnimationDialog2> {
  @override
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Animation Dialog 2",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              NAlertDialog(
                title: Text(
                  "Popup Bounching",
                  style: TextStyle(
                      fontFamily: "Sofia", fontWeight: FontWeight.w700),
                ),
                content: Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w300,
                      color: Colors.black26),
                ),
                blur: 2,
              ).show(context);
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.greenAccent),
              child: Center(
                child: Text("Animation 2 Dialog",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Sofia")),
              ),
            )),
      ),
    );
  }
}
