import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Model/ConceptModel.dart';

class SimpleDialogs extends StatefulWidget {
  SimpleDialogs({Key? key}) : super(key: key);

  @override
  _SimpleDialogsState createState() => _SimpleDialogsState();
}

class _SimpleDialogsState extends State<SimpleDialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.99),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Simple Dialog",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              simpleDialog(context);
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.greenAccent),
              child: Center(
                child: Text("Simple Dialog",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Sofia")),
              ),
            )),
      ),
    );
  }
}

void simpleDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Mute Notification ?",
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w700,
                fontSize: 18.0)),
        actions: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              primary: Colors.transparent,
            ),
            child: const Text('CANCEL', style: TextStyle(fontFamily: "Sofia")),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              primary: Colors.transparent,
            ),
            child: const Text('OK', style: TextStyle(fontFamily: "Sofia")),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    },
  );
}
