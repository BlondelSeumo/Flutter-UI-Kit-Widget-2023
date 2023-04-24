import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccesDialog extends StatefulWidget {
  SuccesDialog();

  @override
  SuccesDialogState createState() => new SuccesDialogState();
}

class SuccesDialogState extends State<SuccesDialog> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Succes Dialog",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              showDialog(
                  context: context, builder: (_) => SuccesDialogCustom());
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.greenAccent),
              child: Center(
                child: Text("Show Succes Dialog",
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

class SuccesDialogCustom extends StatefulWidget {
  SuccesDialogCustom({Key? key}) : super(key: key);

  @override
  SuccesDialogCustomState createState() => new SuccesDialogCustomState();
}

class SuccesDialogCustomState extends State<SuccesDialogCustom> {
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
                color: Colors.lightGreen[500],
                child: Column(
                  children: <Widget>[
                    Container(height: 10),
                    Icon(Icons.check_circle, color: Colors.white, size: 100),
                    Text("Succes",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 25.0)),
                    Container(height: 10),
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
