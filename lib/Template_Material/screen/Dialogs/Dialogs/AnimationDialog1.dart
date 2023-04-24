import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationDialog1 extends StatefulWidget {
  AnimationDialog1();

  @override
  AnimationDialog1State createState() => new AnimationDialog1State();
}

class AnimationDialog1State extends State<AnimationDialog1> {
  @override
  Widget build(BuildContext context) {
    final successAlert = _buildButton(
      onTap: () {
        CoolAlert.show(
            context: context,
            type: CoolAlertType.success,
            backgroundColor: Colors.greenAccent.withOpacity(0.1),
            confirmBtnColor: Colors.greenAccent);
      },
      text: "Success",
      color: Colors.green,
    );

    final errorAlert = _buildButton(
      onTap: () {
        CoolAlert.show(
            context: context,
            type: CoolAlertType.error,
            backgroundColor: Colors.redAccent.withOpacity(0.1),
            confirmBtnColor: Colors.redAccent);
      },
      text: "Error",
      color: Colors.red,
    );

    final warningAlert = _buildButton(
      onTap: () {
        CoolAlert.show(
            context: context,
            type: CoolAlertType.warning,
            backgroundColor: Colors.yellowAccent.withOpacity(0.1),
            confirmBtnColor: Colors.yellow);
      },
      text: "Warning",
      color: Colors.orange,
    );

    final infoAlert = _buildButton(
      onTap: () {
        CoolAlert.show(
            context: context,
            type: CoolAlertType.info,
            backgroundColor: Colors.blueAccent.withOpacity(0.1),
            confirmBtnColor: Colors.blueAccent);
      },
      text: "Info",
      color: Colors.blue[100],
    );

    final confirmAlert = _buildButton(
      onTap: () {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.confirm,
          backgroundColor: Colors.blueAccent.withOpacity(0.1),
          confirmBtnColor: Colors.blueAccent,
          text: "Do you want to logout",
          confirmBtnText: "Yes",
          cancelBtnText: "No",
        );
      },
      text: "Confirm",
      color: Colors.lightGreen,
    );

    final loadingAlert = _buildButton(
      onTap: () {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.loading,
        );
      },
      text: "Loading",
      color: Colors.grey,
    );

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Animation Dialog 1",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            successAlert,
            errorAlert,
            warningAlert,
            infoAlert,
            confirmAlert,
            loadingAlert,
          ],
        ),
      ),
    );
  }
}

Widget _buildButton({VoidCallback? onTap, required String text, Color? color}) {
  return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 200,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
              color: Colors.greenAccent),
          child: Center(
            child: Text(text,
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Sofia")),
          ),
        ),
      ));
}
