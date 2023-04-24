import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Model/ConceptModel.dart';

class ConfirmDialog extends StatefulWidget {
  ConfirmDialog({Key? key}) : super(key: key);

  @override
  _ConfirmDialogState createState() => _ConfirmDialogState();
}

class _ConfirmDialogState extends State<ConfirmDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.99),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Confirm Dialog",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              confirmDialog(context);
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.greenAccent),
              child: Center(
                child: Text("Confrim Dialog",
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

void confirmDialog(BuildContext context) async {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          "Share ?",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w800),
        ),
        content: const Text(
          "Share your file and location to this application",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w300),
        ),
        actions: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              primary: Colors.transparent,
            ),
            child: const Text(
              'DISAGREE',
              style: TextStyle(fontFamily: "Sofia"),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              primary: Colors.transparent,
            ),
            child: const Text(
              'AGREE',
              style: TextStyle(fontFamily: "Sofia"),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    },
  );
}
