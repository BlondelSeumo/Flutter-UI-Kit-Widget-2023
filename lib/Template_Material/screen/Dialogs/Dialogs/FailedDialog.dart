import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FailedDialog extends StatefulWidget {
  FailedDialog();

  @override
  FailedDialogState createState() => new FailedDialogState();
}

class FailedDialogState extends State<FailedDialog> {
  @override
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Failed Dialog",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              showDialog(
                  context: context, builder: (_) => FailedDialogCustom());
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.greenAccent),
              child: Center(
                child: Text("Show Failed Dialog",
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

class FailedDialogCustom extends StatefulWidget {
  FailedDialogCustom({Key? key}) : super(key: key);

  @override
  FailedDialogCustomState createState() => new FailedDialogCustomState();
}

class FailedDialogCustomState extends State<FailedDialogCustom> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.redAccent,
                child: Column(
                  children: <Widget>[
                    Container(height: 10),
                    Icon(Icons.new_releases, color: Colors.white, size: 100),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(25),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text("Failed to loud data, pleate try again!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Sofia", fontWeight: FontWeight.w300)),
                    Container(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        primary: Colors.redAccent,
                      ),
                      child: Text(
                        "Retry",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
